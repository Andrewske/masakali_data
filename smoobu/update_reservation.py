from dotenv import load_dotenv
import requests
import json
import os

load_dotenv()

url = "https://login.smoobu.com/api/reservations/"
apiKey = os.environ.get("SMOOBU_API_KEY")


def update_reservation(reservationId, data):
    try:
        headers = {"Content-Type": "application/json", "Api-Key": apiKey}
        response = requests.put(
            url + str(reservationId), data=json.dumps(data), headers=headers
        )

        print(response.json())
    except Exception as e:
        print(e)
