import os
import numpy as np
import pandas as pd
from datetime import datetime as dt
import openpyxl

from masakali_data.utils import (
    open_csv,
    save_csv,
    current_directory,
    create_monthly_sheets,
    update_parquet,
)
from masakali_data.exchange_rates import convert_columns_to_usd, convert_columns_to_idr


current_directory = current_directory(__file__)
current_year = dt.now().year


def calculate_check_out(df):
    df["check_in"] = pd.to_datetime(df["check_in"])
    df["check_out"] = df["check_in"] + pd.to_timedelta(df["nights"], unit="d")
    return df


def format_date(df, column):
    df[column] = df[column].dt.strftime("%Y-%m-%d")
    return df


# def create_monthly_sheets(df, filename):
#     with pd.ExcelWriter(filename) as writer:
#         for month in df["check_out"].dt.month.unique():
#             month_df = df[df["check_out"].dt.month == month].copy()
#             month_name = month_df["check_out"].dt.month_name().iloc[0]
#             month_df = format_date(month_df, "check_in")
#             month_df = format_date(month_df, "check_out")
#             month_df.to_excel(writer, sheet_name=month_name, index=False)

#         df["check_out"] = (
#             pd.to_datetime(df["check_out"]).dt.to_period("M").dt.to_timestamp()
#         )
#         totals_df = (
#             df.groupby(pd.Grouper(key="check_out", freq="M"))
#             .sum(numeric_only=True)
#             .reset_index()
#         )
#         totals_df = format_date(totals_df, "check_out")
#         totals_df.rename({"check_out": "month"}, axis=1, inplace=True)
#         totals_df.to_excel(writer, sheet_name="Totals", index=False)


def calculate_payouts(payouts, year=current_year):
    df = payouts[["Date", "Paid Out", "Currency"]].copy()
    df.rename(columns={"Date": "date", "Paid Out": "USD"}, inplace=True)
    df["date"] = pd.to_datetime(df["date"]).dt.strftime("%Y-%m-%d")
    df["IDR"] = df["USD"]
    df = convert_columns_to_idr(df, ["IDR"])
    df = df[["date", "IDR", "USD"]]
    save_csv(current_directory, df, f"{year}/payouts_{year}.csv")


def load_data():
    df = open_csv(current_directory, f"data/all_airbnb.csv")
    df.columns = df.columns.str.title()

    nightly_rate_adjustments = open_csv(
        current_directory, f"data/nightly_rate_adjustments.csv"
    )
    nightly_rate_adjustments = nightly_rate_adjustments.astype(
        {"booking_id": str, "nightly_adjustment": float}
    )

    return df, nightly_rate_adjustments


def process_payouts(df, year=current_year):
    payout = df[(df["Type"] == "Payout")]
    return calculate_payouts(payout, year)


def process_taxes(df):
    use_tax = df[df["Type"] == "Pass Through Tot"][["Confirmation Code", "Amount"]]
    return use_tax.rename(columns={"Amount": "property_use_tax"})


def process_resolutions(df):
    resolutions = df[(df["Type"].isin(["Resolution Adjustment", "Resolution Payout"]))][
        ["Confirmation Code", "Amount"]
    ]
    return resolutions.rename(columns={"Amount": "resolution"})


def process_reservations(df, use_tax, resolutions):
    reservations = df[df["Type"] == "Reservation"]
    reservations = reservations[
        [
            "Date",
            "Confirmation Code",
            "Start Date",
            "Nights",
            "Guest",
            "Amount",
            "Host Service Fee",
            "Cleaning Fee",
            "Listing",
        ]
    ]
    reservations = merge_and_fillna(reservations, use_tax, "property_use_tax")
    reservations = merge_and_fillna(reservations, resolutions, "resolution")
    return rename_columns(reservations)


def merge_and_fillna(df, other, column):
    df = df.merge(other, how="left", on="Confirmation Code")
    df[column] = df[column].fillna(0)
    return df


def rename_columns(df):
    return df.rename(
        columns={
            "Date": "date",
            "Confirmation Code": "booking_id",
            "Start Date": "check_in",
            "Nights": "nights",
            "Guest": "guest_name",
            "Amount": "gross_income",
            "Host Service Fee": "commission",
            "Cleaning Fee": "cleaning_fee",
            "Currency": "currency",
            "Listing": "villa_name",
        }
    )


def calculate_columns(reservations):
    reservations = calculate_check_out(reservations)
    reservations["platform"] = "airbnb"
    reservations["total_payout"] = (
        reservations.gross_income + reservations.property_use_tax
    )
    reservations["host_service_fee"] = (
        reservations.gross_income + reservations.commission
    ) * 0.15
    reservations["vat"] = reservations.commission - reservations.host_service_fee
    reservations["net_income"] = (
        reservations.total_payout
        - reservations.property_use_tax
        + reservations.host_service_fee
        + reservations.vat
    )
    reservations["taxable_income"] = reservations.net_income - reservations.cleaning_fee
    return reservations


def main(year=current_year):
    df, nightly_rate_adjustments = load_data()
    payout = process_payouts(df, year)
    use_tax = process_taxes(df)
    resolutions = process_resolutions(df)
    reservations = process_reservations(df, use_tax, resolutions)
    reservations = calculate_columns(reservations)

    columns_to_convert = [
        "total_payout",
        "property_use_tax",
        "host_service_fee",
        "vat",
        "net_income",
        "cleaning_fee",
        "taxable_income",
        "commission",
    ]
    reservations["nights"] = (reservations.check_out - reservations.check_in).dt.days

    summary = build_summary(reservations.copy())
    print(summary)

    df_usd = convert_columns_to_usd(reservations.copy(), columns_to_convert)
    reservations.drop(columns=["date"], inplace=True)
    df_usd = df_usd.drop(columns=["date"]).drop_duplicates(
        subset=["booking_id"], keep="first"
    )

    update_parquet(current_directory, reservations, f"data/airbnb_revenue_idr.parquet")
    update_parquet(current_directory, df_usd, f"data/airbnb_revenue_usd.parquet")
    save_csv(current_directory, reservations, f"data/airbnb_revenue_idr.csv")

    return reservations


# def main(year=current_year):

#     df = open_csv(current_directory, f"data/all_airbnb.csv")
#     df.columns = df.columns.str.title()

#     nightly_rate_adjustments = open_csv(
#         current_directory, f"nightly_rate_adjustments.csv"
#     )
#     nightly_rate_adjustments = nightly_rate_adjustments.astype(
#         {"booking_id": str, "nightly_adjustment": float}
#     )

#     ## Payouts
#     payout = df[(df["Type"] == "Payout")]
#     payout = calculate_payouts(payout, year)

#     ## Taxes
#     use_tax = df[df["Type"] == "Pass Through Tot"][["Confirmation Code", "Amount"]]
#     use_tax = use_tax.rename(columns={"Amount": "property_use_tax"})

#     ## Resolution adjustment
#     resolutions = df[(df["Type"].isin(["Resolution Adjustment", "Resolution Payout"]))][
#         ["Confirmation Code", "Amount"]
#     ]
#     resolutions = resolutions.rename(columns={"Amount": "resolution"})

#     ## Reservations
#     reservations = df[df["Type"] == "Reservation"]

#     ## Grab the relevant columns
#     reservations = reservations[
#         [
#             "Date",
#             "Confirmation Code",
#             "Start Date",
#             "Nights",
#             "Guest",
#             "Amount",
#             "Host Service Fee",
#             "Cleaning Fee",
#             "Listing",
#         ]
#     ]

#     reservations = reservations.merge(use_tax, how="left", on="Confirmation Code")
#     reservations["property_use_tax"] = reservations["property_use_tax"].fillna(0)
#     reservations = reservations.merge(resolutions, how="left", on="Confirmation Code")
#     reservations["resolution"] = reservations["resolution"].fillna(0)

#     ## Rename columns
#     reservations = reservations.rename(
#         columns={
#             "Date": "date",
#             "Confirmation Code": "booking_id",
#             "Start Date": "check_in",
#             "Nights": "nights",
#             "Guest": "guest_name",
#             "Amount": "gross_income",
#             "Host Service Fee": "commission",
#             "Cleaning Fee": "cleaning_fee",
#             "Currency": "currency",
#             "Listing": "villa_name",
#         }
#     )

#     reservations = calculate_check_out(reservations)

#     # Add columns
#     reservations["platform"] = "airbnb"
#     reservations["total_payout"] = (
#         reservations.gross_income + reservations.property_use_tax
#     )
#     reservations["host_service_fee"] = (
#         reservations.gross_income + reservations.commission
#     ) * 0.15
#     reservations["vat"] = reservations.commission - reservations.host_service_fee
#     reservations["net_income"] = (
#         reservations.total_payout
#         - reservations.property_use_tax
#         + reservations.host_service_fee
#         + reservations.vat
#     )
#     reservations["taxable_income"] = reservations.net_income - reservations.cleaning_fee

#     columns_to_convert = [
#         "total_payout",
#         "property_use_tax",
#         "host_service_fee",
#         "vat",
#         "net_income",
#         "cleaning_fee",
#         "taxable_income",
#         "commission",
#     ]

#     reservations["nights"] = (reservations.check_out - reservations.check_in).dt.days

#     reservations = reservations[
#         [
#             "date",
#             "platform",
#             "booking_id",
#             "villa_name",
#             "guest_name",
#             "check_in",
#             "check_out",
#             "nights",
#             "total_payout",
#             "property_use_tax",
#             "host_service_fee",
#             "vat",
#             "net_income",
#             "cleaning_fee",
#             "taxable_income",
#             "commission",
#         ]
#     ]


#     summary = build_summary(reservations.copy())

#     print(summary)


#     df_usd = convert_columns_to_usd(reservations.copy(), columns_to_convert)

#     reservations.drop(columns=["date"], inplace=True)

#     df_usd = df_usd.drop(columns=["date"]).drop_duplicates(
#         subset=["booking_id"], keep="first"
#     )

#     update_parquet(current_directory, reservations, f"data/airbnb_revenue_idr.parquet")
#     update_parquet(current_directory, df_usd, f"data/airbnb_revenue_usd.parquet")

#     save_csv(current_directory, reservations, f"data/airbnb_revenue_idr.csv")
#     return reservations

#     # save_csv(current_directory, reservations, f"{year}/airbnb_revenue_idr_{year}.csv")
#     # create_monthly_sheets(
#     #     current_directory, reservations, f"{year}/airbnb_revenue_idr_{year}.xlsx"
#     # )

#     # save_csv(current_directory, df_usd, f"{year}/airbnb_revenue_usd_{year}.csv")
#     # create_monthly_sheets(
#     #     current_directory, df_usd, f"{year}/airbnb_revenue_usd_{year}.xlsx"
#     # )


#     #  - total dollar amount paid by guest (gross revenue)
#     # - total commissions and related VAT (commissions inclusive of VAT)
#     # - 10% of total dollar amount paid by guest (sales tax payable)
#     # - gross revenue less sales taxes payable
#     # - gross revenue less commissions inclusive of VAT


def build_summary(df):

    df.rename(
        columns={
            "net_income": "Gross Revenue",
            "commission": "Commissions",
        }
    )

    df["Sales Tax Payable"] = df["Gross Revenue"] * 0.1
    df["Gross Revenue less Sales Tax Payable"] = (
        df["Gross Revenue"] - df["Sales Tax Payable"]
    )
    df["Gross Revenue less Commissions"] = df["Gross Revenue"] - df["Commissions"]

    return df.groupby().sum()


if __name__ == "__main__":
    main()
