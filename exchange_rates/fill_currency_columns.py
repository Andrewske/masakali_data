import pandas as pd
from masakali_data.exchange_rates import get_exchange_rates


def fill_currency_columns(df):
    rates = get_exchange_rates()
    rates["date"] = pd.to_datetime(rates["date"]).dt.strftime("%Y-%m-%d")

    for i, row in df.iterrows():
        rate = rates[rates["date"] == row["date"]]["rate"].values[0]
        if row["USD"] == 0:
            df.loc[i, "USD"] = round(row["IDR"] / rate, 2)
        elif row["IDR"] == 0:
            df.loc[i, "IDR"] = round(row["USD"] * rate, 2)
    return df
