def format_date(df, column):
    df[column] = df[column].dt.strftime("%Y-%m-%d")
    return df
