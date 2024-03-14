import pandas as pd
from datetime import datetime as dt
from masakali_data.utils import (
    open_csv,
    current_directory,
    update_parquet,
)
from masakali_data.exchange_rates import convert_columns_to_usd
from masakali_data.smoobu import get_reservations

current_directory = current_directory(__file__)
current_year = dt.now().year


def get_fields_from_smoobu(df):
    # Get all the smoobu bookings
    smoobu_bookings = get_reservations()[["reference_id", "villa_name", "date"]]
    smoobu_bookings.to_csv("bookings.csv")
    smoobu_bookings = smoobu_bookings.rename(columns={"reference_id": "booking_id"})

    df["booking_id"] = df.booking_id.astype("string")

    smoobu_bookings[smoobu_bookings.booking_id == "3059410468"]

    df = df.merge(smoobu_bookings, on="booking_id", how="left")

    return df


def main():
    df = pd.DataFrame()

    for year in range(2022, current_year + 1):
        filename = f"{year}\\all_booking_{year}.csv"
        df_ = open_csv(current_directory, filename)
        df_ = df_[df_["Type"] == "Reservation"]
        df = pd.concat([df, df_])

    # Grab relevant columns
    df = df[
        [
            "Reference number",
            "Check-in",
            "Checkout",
            "Guest name",
            "Amount",
            "Commission",
            "Payment charge",
            "VAT for online platform services",
            "Net",
        ]
    ]

    # Rename columns
    df = df.rename(
        columns={
            "Platform": "Booking.com",
            "Reference number": "booking_id",
            "Check-in": "check_in",
            "Checkout": "check_out",
            "Guest name": "guest_name",
            "Amount": "gross_income",
            "Commission": "commission",
            "Payment charge": "payment_fee",
            "VAT for online platform services": "vat_taxes",
            "Net": "net_income",
        }
    )

    df["platform"] = "booking"

    # Turn check_in and check_out to datetime
    df["check_in"] = pd.to_datetime(df.check_in)
    df["check_out"] = pd.to_datetime(df.check_out)

    # Add new columns
    df["cleaning_fee"] = 400000
    df["taxable_income"] = df.net_income - df.cleaning_fee
    df["nights"] = (df.check_out - df.check_in).dt.days

    df = get_fields_from_smoobu(df)

    df = df.astype(
        {
            "booking_id": "uint32",
            "check_in": "datetime64[ns]",
            "check_out": "datetime64[ns]",
            "guest_name": "string",
            "gross_income": "float64",
            "commission": "float64",
            "payment_fee": "float64",
            "vat_taxes": "float64",
            "net_income": "float64",
            "platform": "category",
            "cleaning_fee": "float64",
            "taxable_income": "float64",
            "nights": "uint16",
            "villa_name": "category",
            "date": "datetime64[ns]",
        }
    )

    columns_to_convert = [
        "gross_income",
        "commission",
        "payment_fee",
        "vat_taxes",
        "net_income",
        "cleaning_fee",
        "taxable_income",
    ]

    df_usd = convert_columns_to_usd(df.copy(), columns_to_convert)

    df_idr = df.drop(columns=["date"]).drop_duplicates(
        subset=["booking_id"], keep="first"
    )
    df_usd = df_usd.drop(columns=["date"]).drop_duplicates(
        subset=["booking_id"], keep="first"
    )

    update_parquet(current_directory, df_idr, f"data/booking_revenue_idr.parquet")
    update_parquet(current_directory, df_usd, f"data/booking_revenue_usd.parquet")

    return df_idr

    # save_csv(current_directory, df, f"{year}/booking_revenue_idr_{year}.csv")
    # create_monthly_sheets(
    #     current_directory, df, f"{year}/booking_revenue_idr_{year}.xlsx"
    # )

    # save_csv(current_directory, df_usd, f"{year}/booking_revenue_usd_{year}.csv")
    # create_monthly_sheets(
    #     current_directory, df_usd, f"{year}/booking_revenue_usd_{year}.xlsx"
    # )


if __name__ == "__main__":
    main()
