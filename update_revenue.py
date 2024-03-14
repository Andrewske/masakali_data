import pandas as pd
import os
from masakali_data import agoda, airbnb, booking, website, exchange_rates
from masakali_data.utils import (
    timer_wrapper,
    open_or_save_parquet,
    current_directory,
    open_parquet,
    update_parquet,
)

current_directory = current_directory(__file__)


@timer_wrapper
def update_exchange_rates():
    exchange_rates.main()


@timer_wrapper
def update_agoda(update=False):
    return open_or_save_parquet(
        current_directory, agoda.main, "agoda/data/agoda_revenue_idr.parquet", update
    )


@timer_wrapper
def update_airbnb(update=False):
    return open_or_save_parquet(
        current_directory, airbnb.main, "airbnb/data/airbnb_revenue_idr.parquet", update
    ).rename({"total_payout": "gross_income"}, axis=1)


@timer_wrapper
def update_booking(update=False):
    return open_or_save_parquet(
        current_directory,
        booking.main,
        "booking/data/booking_revenue_idr.parquet",
        update,
    )


@timer_wrapper
def update_website(update=False):
    return open_or_save_parquet(
        current_directory,
        website.main,
        "website/data/website_revenue_idr.parquet",
        update,
    )


def main():
    # update_exchange_rates()
    agoda = update_agoda(True)
    airbnb = update_airbnb(True)
    booking = update_booking(True)
    website = update_website(True)
    df = pd.concat([agoda, airbnb, booking, website])
    df["booking_id"] = df["booking_id"].astype(str)
    update_parquet(
        current_directory, df, "data/revenue_idr.parquet", index="booking_id"
    )
    df.to_csv("data/revenue_idr.csv", index=False)
    print(df[df.platform == "agoda"].head())
    print(df.describe().round())


if __name__ == "__main__":
    main()
