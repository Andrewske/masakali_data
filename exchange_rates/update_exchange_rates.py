from datetime import date, datetime as dt, timedelta
import currencyapicom
import pandas as pd
import sys
import os

from masakali_data.utils import open_csv, save_csv

key = "3a8361c0-98e5-11ec-8319-539b84e8e698"
current_year = dt.now().year
current_directory = os.path.dirname(os.path.abspath(__file__))


def get_exchange_rates(client, start_date, end_date, df):
    for i in range((end_date - start_date).days + 1):
        try:
            current_date = start_date + timedelta(days=i)
            current_date_iso = current_date.isoformat()

            if current_date_iso not in df["date"].values:
                result = client.historical(current_date, "USD", ["IDR"])
                df.loc[len(df.index)] = [
                    current_date_iso,
                    result["data"]["IDR"]["value"],
                ]
                print(
                    f"Exchange rate for {current_date_iso} is {result['data']['IDR']['value']}"
                )
        except Exception as e:
            print(f"An error occurred on day {i}: {e}")

    return df


def main(year=current_year):
    start_date = date(year, 1, 1)
    end_date = date(year + 1, 1, 1)

    if year == current_year:
        end_date = date.today() - timedelta(days=1)

    client = currencyapicom.Client("3a8361c0-98e5-11ec-8319-539b84e8e698")
    df = open_csv(current_directory, f"usd_to_idr_{year}.csv")

    df = get_exchange_rates(client, start_date, end_date, df)

    df.sort_values(by="date", inplace=True)
    df.reset_index(drop=True, inplace=True)
    save_csv(current_directory, df, f"usd_to_idr_{year}.csv")


if __name__ == "__main__":
    year = sys.argv[1] if len(sys.argv) > 1 else current_year
    main(year)
