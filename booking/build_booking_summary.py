import os
import numpy as np
import pandas as pd
from datetime import datetime as dt
import openpyxl

from masakali_data.utils import (
    open_csv,
    save_csv,
    current_directory,
)

current_directory = current_directory(__file__)

summary_columns = [
    "Checkout",
    "Gross Revenue",
    "Commission",
    "Sales Tax Payable",
    "Gross Revenue less Sales Tax Payable",
    "Gross Revenue less Commission",
]


def load_data():
    df = open_csv(current_directory, f"2023/all_booking_2023.csv")
    df.columns = df.columns.str.title()

    return df


def build_summary(df):
    df["Gross Revenue"] = df["Amount"]
    df["Commission"] = df["Commission"] + df["Payment Charge"]
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

    print(df)
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
    df = build_summary(df)
    df = group_by_month(df)

    save_csv(current_directory, df, "data/booking_summary.csv")


if __name__ == "__main__":
    main()
