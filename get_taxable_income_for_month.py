import pandas as pd

from masakali_data.utils import (
    timer_wrapper,
    open_or_save_parquet,
    current_directory,
    open_parquet,
    update_parquet,
    save_csv,
)

current_directory = current_directory(__file__)


def main(start_date, end_date):
    start_date = pd.to_datetime(start_date)
    end_date = pd.to_datetime(end_date)
    filters = [[("check_out", ">=", start_date), ("check_out", "<", end_date)]]
    columns = [
        "platform",
        "villa_name",
        "guest_name",
        "check_in",
        "check_out",
        "nights",
        "taxable_income",
        "gross_income",
        "commission",
        "cleaning_fee",
        "host_service_fee",
        "net_income",
    ]
    df = open_parquet(
        current_directory, "data/revenue_idr.parquet", filters=filters, columns=columns
    )

    df = df.sort_values(by=["platform", "check_out"])

    print(df.head())
    print(df.columns)
    print(df.describe().round(0))
    print(df[df.taxable_income.isna()])

    df.to_excel(
        f"{current_directory}/data/revenue_{start_date.strftime('%b').lower()}_{start_date.year}.xlsx",
    )
    return


if __name__ == "__main__":
    main("2024-01-01", "2024-01-31")
