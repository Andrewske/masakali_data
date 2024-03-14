import os
import pandas as pd
import time
import pyarrow.parquet as pq


def print_memory(df):
    print(f"{df.memory_usage(deep=True).sum() // 1024} KB")


def open_csv(current_directory, filename):
    csv_path = os.path.join(current_directory, filename)
    return pd.read_csv(csv_path)


def save_csv(current_directory, df, filename):
    csv_path = os.path.join(current_directory, filename)
    df.to_csv(csv_path, index=False)
    return csv_path


def open_parquet(current_directory, filename, **kwargs):
    path = os.path.join(current_directory, filename)
    filters = kwargs.get("filters")
    columns = kwargs.get("columns")

    if kwargs.get("filters"):
        dataset = pq.ParquetDataset(path, filters=filters)
        table = dataset.read(columns=columns)
        return table.to_pandas()
    return pd.read_parquet(path, columns=columns)


def save_parquet(current_directory, df, filename):
    csv_path = os.path.join(current_directory, filename)
    df.to_parquet(csv_path, index=False)
    return csv_path


def update_parquet(current_directory, new_df, filename, index="booking_id"):
    # Path to the parquet file
    parquet_path = os.path.join(current_directory, filename)
    # print("updates", len(new_df))

    if os.path.exists(parquet_path):
        # Read the existing parquet file
        df = pd.read_parquet(parquet_path)
        # print("before_update", len(df))
        # Set 'offer_id' as the index in both DataFrames for the update operation
        df.set_index(index, inplace=True)
    else:
        df = pd.DataFrame()

    updates = new_df.copy().set_index(index)

    # Update the DataFrame with the new DataFrame
    df.update(updates)

    # Add new rows from updates that are not in df
    df = pd.concat([df, updates[~updates.index.isin(df.index)]])

    # Reset the index
    df.reset_index(inplace=True)

    # print("after_update", len(df))

    # Write the updated DataFrame back to the parquet file
    save_parquet(current_directory, df, filename)

    return parquet_path


def open_or_save_parquet(current_directory, function, filename, update=False, *args):
    csv_path = os.path.join(current_directory, filename)
    # print(csv_path)
    if not os.path.exists(csv_path) or update:
        # print("updating")
        df = function(*args)
        df.to_parquet(csv_path, index=False)
    else:
        df = pd.read_parquet(csv_path)
    return df


def timer_wrapper(func):
    def wrapped(*args, **kwargs):
        start_time = time.time()
        result = func(*args, **kwargs)
        end_time = time.time()

        elapsed_time = end_time - start_time
        print(f"'{func.__name__}' took {elapsed_time:.6f} seconds to run.")

        return result

    return wrapped
