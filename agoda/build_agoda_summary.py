import os
import numpy as np
import pandas as pd
from datetime import datetime as dt


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
    df = open_csv(current_directory, f"2023/all_agoda_2023.csv")
    df2 = open_csv(current_directory, f"2024/all_agoda_2024.csv")

    df_ = pd.concat([df, df2])
    df_ = df_.drop_duplicates(subset=["BookingIDExternal_reference_ID"], keep="last")
    return df_


def build_summary(df):
    df["Checkout"] = df["StayDateTo"]
    df["Gross Revenue"] = df["ReferenceSellInclusive"]

    print(df["Gross Revenue"].sum())

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
    print(grouped_df)
    return grouped_df


def main():
    df = load_data()
    df = build_summary(df)
    df = group_by_month(df)

    save_csv(current_directory, df, "data/agoda_summary.csv")


if __name__ == "__main__":
    main()
