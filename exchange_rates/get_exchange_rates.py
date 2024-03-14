import pandas as pd
from masakali_data.utils import open_csv
import os

current_directory = os.path.dirname(os.path.abspath(__file__))


def load_exchange_rates(year):
    return open_csv(current_directory, f"usd_to_idr_{year}.csv")


def get_exchange_rates(year=None):
    if year:
        return load_exchange_rates(year)
    else:
        years = [2024, 2023, 2022]
        return pd.concat([load_exchange_rates(year) for year in years])
