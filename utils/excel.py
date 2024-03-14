import os
import pandas as pd
from masakali_data.utils import format_date


def create_monthly_sheets(current_directory, df, filename):
    filepath = os.path.join(current_directory, filename)
    with pd.ExcelWriter(filepath) as writer:
        for month in df["check_out"].dt.month.unique():
            month_df = df[df["check_out"].dt.month == month].copy()
            month_name = month_df["check_out"].dt.month_name().iloc[0]
            month_df = format_date(month_df, "check_in")
            month_df = format_date(month_df, "check_out")
            month_df.to_excel(writer, sheet_name=month_name, index=False)

        df["check_out"] = (
            pd.to_datetime(df["check_out"]).dt.to_period("M").dt.to_timestamp()
        )
        totals_df = (
            df.groupby(pd.Grouper(key="check_out", freq="M"))
            .sum(numeric_only=True)
            .reset_index()
        )
        totals_df = format_date(totals_df, "check_out")
        totals_df.rename({"check_out": "month"}, axis=1, inplace=True)
        totals_df.to_excel(writer, sheet_name="Totals", index=False)
