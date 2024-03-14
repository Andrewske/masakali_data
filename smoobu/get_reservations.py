from dotenv import load_dotenv
import requests
import pandas as pd
import os

from masakali_data.utils import current_directory, open_or_save_parquet
from masakali_data.smoobu.channel_map import get_channel

current_directory = current_directory(__file__)

load_dotenv()

url = "https://login.smoobu.com/api/reservations"
apiKey = os.environ.get("SMOOBU_API_KEY")


# https://docs.smoobu.com/#get-bookings-api
def get_reservations_for_year():
    start_date = f"2022-01-01"

    count = 1
    page_count = float("inf")
    bookings = []

    while count < page_count:
        params = {
            "from": start_date,
            "page": count,
            "pageSize": 100,
        }

        headers = {
            "Content-Type": "application/json",
            "Api-Key": apiKey,
            "Cache-Control": "no-cache",
        }
        response = requests.get(url, params=params, headers=headers)

        if response.status_code == 200:
            try:
                data = response.json()
                page_count = data["page_count"]
                count += 1
                bookings = bookings + data["bookings"]
            except ValueError:
                print("No JSON object could be decoded from the response")
        else:
            print("Error: Received status code", response.status_code)

    df = pd.DataFrame(bookings)
    df["villa_name"] = df["apartment"].apply(lambda x: x["name"].lower())

    df["channel_id"] = df["channel"].apply(lambda x: x["id"])
    df["channel_name"] = df["channel_id"].apply(lambda x: get_channel(x))
    df = df.rename(
        columns={
            "reference-id": "reference_id",
            "commission-included": "commission_included",
            "guest-name": "guest_name",
            "created-at": "date",
            "arrival": "check_in",
            "departure": "check_out",
        }
    )

    columns = [
        "id",
        "reference_id",
        "type",
        "check_in",
        "check_out",
        "villa_name",
        "channel_id",
        "channel_name",
        "guest_name",
        "price",
        "commission_included",
        "date",
    ]

    # df[columns].to_csv("bookings.csv", index=False)
    return df[columns]


def get_reservations(update=False):
    return open_or_save_parquet(
        current_directory,
        get_reservations_for_year,
        "data/smoobu_reservations.parquet",
        update,
    )


if __name__ == "__main__":
    print(get_reservations(True))
