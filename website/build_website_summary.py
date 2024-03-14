import os
import numpy as np
import pandas as pd
from datetime import datetime as dt
from masakali_data.exchange_rates import get_exchange_rates
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
    df = open_csv(current_directory, f"website_and_direct_accurate_price.csv")

    return df


def convert_prices(df):
    rates = get_exchange_rates()

    rates["date"] = pd.to_datetime(rates["date"]).dt.strftime("%Y-%m-%d")
    df["date"] = pd.to_datetime(df["date"], format="mixed").dt.strftime("%Y-%m-%d")

    df = df.merge(rates, on="date")

    mask = df[df.currency == "usd"].index

    df.loc[mask, "price"] = df.loc[mask, "price"] * df.loc[mask, "rate"]

    df["Gross Revenue"] = df["price"]
    df["Commission"] = df["commission_included"] * df["rate"]

    return df


def build_summary(df):
    df["Checkout"] = pd.to_datetime(df["check_out"])
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

    df = convert_prices(df)

    df = build_summary(df)
    df = group_by_month(df)
    print(df)

    save_csv(current_directory, df, "data/website_and_direct_summary.csv")


if __name__ == "__main__":
    main()
