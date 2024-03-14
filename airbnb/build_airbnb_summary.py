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

summary_columns = [
    "Checkout",
    "Gross Revenue",
    "Commission",
    "Sales Tax Payable",
    "Gross Revenue less Sales Tax Payable",
    "Gross Revenue less Commission",
]


def calculate_check_out(df):
    df["check_in"] = pd.to_datetime(df["check_in"])
    df["check_out"] = df["check_in"] + pd.to_timedelta(df["nights"], unit="d")
    return df


def format_date(df, column):
    df[column] = df[column].dt.strftime("%Y-%m-%d")
    return df


def load_data():
    df = open_csv(current_directory, f"data/all_airbnb.csv")
    df.columns = df.columns.str.title()
    return df


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


def build_summary(df):

    df = df.rename(
        columns={
            "net_income": "Gross Revenue",
            "commission": "Commission",
            "check_out": "Checkout",
        }
    )

    df["Sales Tax Payable"] = df["Gross Revenue"] * 0.1
    df["Gross Revenue less Sales Tax Payable"] = (
        df["Gross Revenue"] - df["Sales Tax Payable"]
    )
    df["Gross Revenue less Commission"] = df["Gross Revenue"] - df["Commission"]

    return df[
        [
            "Checkout",
            "Gross Revenue",
            "Commission",
            "Sales Tax Payable",
            "Gross Revenue less Sales Tax Payable",
            "Gross Revenue less Commission",
        ]
    ]


def group_by_month(df):
    df["Checkout"] = pd.to_datetime(df["Checkout"])
    df["year_month"] = df["Checkout"].dt.to_period("M")
    grouped_df = (
        df.groupby("year_month")[
            [
                "Gross Revenue",
                "Commission",
                "Sales Tax Payable",
                "Gross Revenue less Sales Tax Payable",
                "Gross Revenue less Commission",
            ]
        ]
        .sum()
        .reset_index()
    )
    return grouped_df


def main():
    df = load_data()
    use_tax = process_taxes(df)
    resolutions = process_resolutions(df)
    reservations = process_reservations(df, use_tax, resolutions)
    reservations = calculate_columns(reservations)
    summary = build_summary(reservations)

    summary = group_by_month(summary)

    save_csv(current_directory, summary, "data/airbnb_summary.csv")


if __name__ == "__main__":
    main()
