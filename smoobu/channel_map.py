CHANNEL_MAP = {
    1466458: "blocked",
    1466464: "direct",
    1466467: "website",
    1466470: "airbnb",
    1466473: "booking",
    1466476: "vrbo",
    1556329: "agoda",
    1571716: "tripadvisor",
}


def get_channel(channel_id):
    if isinstance(channel_id, int):
        return CHANNEL_MAP.get(channel_id)
    elif isinstance(channel_id, str):
        for key, value in CHANNEL_MAP.items():
            if value == channel_id:
                return key
    else:
        return None
