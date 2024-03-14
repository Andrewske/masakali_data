import pandas as pd

from masakali_data.exchange_rates import get_exchange_rates


def convert_columns_to_idr(df, columns_to_convert):
    try:
        rates = get_exchange_rates()
        df["date"] = pd.to_datetime(df["date"]).dt.strftime("%Y-%m-%d")
        rates["date"] = pd.to_datetime(rates["date"]).dt.strftime("%Y-%m-%d")
        df = df.merge(rates, on="date", how="left")
        for column in columns_to_convert:
            df[column] = round(df[column] * df["rate"], 2)

        df = df.drop(columns=["rate"])
        return df
    except:
        print("error", df.head())
        return df
