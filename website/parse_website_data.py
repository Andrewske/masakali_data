import pandas as pd
from datetime import datetime as dt

from masakali_data.smoobu import get_reservations
from masakali_data.utils import (
    open_csv,
    save_csv,
    current_directory,
    create_monthly_sheets,
    update_parquet,
)
from masakali_data.exchange_rates import convert_columns_to_idr, convert_columns_to_usd


current_directory = current_directory(__file__)
current_year = dt.now().year


def main():
    df = open_csv(current_directory, "website_and_direct_accurate_price.csv")

    df = df.astype(
        {
            "check_in": "datetime64[ns]",
            "check_out": "datetime64[ns]",
        }
    )

    df = df.rename(
        columns={
            "id": "booking_id",
            "price": "gross_income",
            "commission_included": "commission",
            "channel_name": "platform",
        }
    )

    df["net_income"] = df.gross_income - df.commission
    df["taxable_income"] = df.net_income

    df["nights"] = (df.check_out - df.check_in).dt.days

    df_idr_small = df[df.currency == "idr"].copy()
    df_usd_small = df[df.currency == "usd"].copy()

    df_idr = pd.concat(
        [
            df_idr_small,
            convert_columns_to_idr(
                df_usd_small,
                ["gross_income", "commission", "net_income", "taxable_income"],
            ),
        ]
    ).reset_index()
    df_usd = pd.concat(
        [
            df_usd_small,
            convert_columns_to_usd(
                df_idr_small,
                ["gross_income", "commission", "net_income", "taxable_income"],
            ),
        ]
    ).reset_index()

    columns = [
        "booking_id",
        "platform",
        "date",
        "check_in",
        "check_out",
        "guest_name",
        "villa_name",
        "gross_income",
        "commission",
        "net_income",
        "taxable_income",
        "nights",
    ]

    df_idr = df_idr[columns]
    df_usd = df_usd[columns]

    update_parquet(current_directory, df_idr, f"data/website_revenue_idr.parquet")
    update_parquet(current_directory, df_usd, f"data/website_revenue_usd.parquet")

    return df_idr

    # save_csv(current_directory, df_idr, f"{year}/website_revenue_idr_{year}.csv")
    # create_monthly_sheets(
    #     current_directory, df_idr, f"{year}/website_revenue_idr_{year}.xlsx"
    # )

    # save_csv(current_directory, df_usd, f"{year}/website_revenue_usd_{year}.csv")
    # create_monthly_sheets(
    #     current_directory, df_usd, f"{year}/website_revenue_usd_{year}.xlsx"
    # )


if __name__ == "__main__":
    main()
