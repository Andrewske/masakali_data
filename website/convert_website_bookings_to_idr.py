import pandas as pd
from masakali_data.utils import open_csv, save_csv, open_parquet
from masakali_data.exchange_rates import get_exchange_rates
import os


current_directory = os.path.dirname(os.path.abspath(__file__))


def open_website_bookings():
    df = open_parquet("../smoobu/data/smoobu_reservations.parquet")
    print(df)


def convert_usd_to_idr(usd, date, rates):
    try:
        rate = rates.loc[rates["date"] == date, "rate"].iloc[0]
        return round(usd * rate, 2)
    except IndexError:
        print(f"No exchange rate found for date: {date}")
        return None


def convert_website_bookings_to_idr():
    rates = get_exchange_rates()
    df = open_csv(current_directory, "website_and_direct_accurate_price.csv")
    df["Created"] = pd.to_datetime(df["Created"]).dt.strftime("%Y-%m-%d")

    df["IDR"] = df.apply(
        lambda row: convert_usd_to_idr(row["Stripe USD"], row["Created"], rates), axis=1
    )
    df["IDR Fee"] = df.apply(
        lambda row: convert_usd_to_idr(row["Stripe Fee USD"], row["Created"], rates),
        axis=1,
    )

    save_csv(current_directory, df, "website_and_direct_accurate_price.csv")


if __name__ == "__main__":
    convert_website_bookings_to_idr()
