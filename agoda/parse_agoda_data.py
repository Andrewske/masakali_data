import pandas as pd
from datetime import datetime as dt
from masakali_data.utils import (
    create_monthly_sheets,
    open_csv,
    current_directory,
    save_csv,
    update_parquet,
)
from masakali_data.exchange_rates import convert_columns_to_usd

current_year = dt.now().year
current_directory = current_directory(__file__)


# Import the CSV
def apply_villa_name(room_type):
    switcher = {
        "Villa With Private Pool": "surya",
        "Private Pool Villa": "chandra",
        "Pool Villa": "jala",
        "Home Haven Pool Villa": "akasha",
        "2-Bedroom Superior Villa": "lakshmi",
    }

    return switcher.get(room_type, "Unknown")


def main():
    agoda = pd.DataFrame()

    for year in range(2022, current_year + 1):
        df = open_csv(current_directory, f"{year}\\all_agoda_{year}.csv")
        agoda = pd.concat([agoda, df])

    agoda["villa_name"] = agoda["RoomType"].apply(apply_villa_name)

    relevant_columns = [
        "BookingIDExternal_reference_ID",
        "StayDateFrom",
        "StayDateTo",
        "Customer_Name",
        "ReferenceSellInclusive",
        "Commission",
        "Total_inclusive_rate",
        "villa_name",
        "BookedDate",
    ]

    # Grab relevant columns
    agoda = agoda[agoda["Status"].isin(["Confirmed", "Amended"])][relevant_columns]

    # Rename columns
    agoda = agoda.rename(
        columns={
            "Platform": "Agoda",
            "BookingIDExternal_reference_ID": "booking_id",
            "StayDateFrom": "check_in",
            "StayDateTo": "check_out",
            "Customer_Name": "guest_name",
            "ReferenceSellInclusive": "gross_income",
            "Commission": "commission",
            "Total_inclusive_rate": "net_income",
            "BookedDate": "date",
        }
    )

    agoda["platform"] = "agoda"

    # Turn check_in and check_out to datetime
    agoda["check_in"] = pd.to_datetime(agoda.check_in, format="%d-%b-%Y")
    agoda["check_out"] = pd.to_datetime(agoda.check_out, format="%d-%b-%Y")

    agoda["cleaning_fee"] = 0
    agoda["taxable_income"] = agoda.net_income - agoda.cleaning_fee
    agoda["nights"] = (agoda.check_out - agoda.check_in).dt.days
    agoda = agoda.drop_duplicates(subset=["booking_id"], keep="first")

    columns_to_convert = [
        "gross_income",
        "commission",
        "net_income",
        "cleaning_fee",
        "taxable_income",
    ]

    agoda_usd = convert_columns_to_usd(agoda, columns_to_convert)

    update_parquet(current_directory, agoda, f"data/agoda_revenue_idr.parquet")
    update_parquet(current_directory, agoda_usd, f"data/agoda_revenue_usd.parquet")

    return agoda

    # save_csv(current_directory, agoda, f"{year}/agoda_revenue_idr_{year}.csv")
    # create_monthly_sheets(
    #     current_directory, agoda, f"{year}/agoda_revenue_idr_{year}.xlsx"
    # )

    # save_csv(current_directory, agoda_usd, f"{year}/agoda_revenue_usd_{year}.csv")
    # create_monthly_sheets(
    #     current_directory, agoda_usd, f"{year}/agoda_revenue_usd_{year}.xlsx"
    # )


if __name__ == "__main__":
    main()
