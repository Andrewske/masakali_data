import subprocess
import os
from dotenv import load_dotenv

load_dotenv()


def create_database_dump(dump_file_path):
    db_host = os.getenv("DB_HOST")
    db_user = os.getenv("DB_USERNAME")
    db_password = os.getenv("DB_PASSWORD")
    db_name = os.getenv("DB_NAME")

    # Construct the mysqldump command
    mysqldump_cmd = f"mysqldump -h {db_host} -u {db_user} -p {db_password} {db_name} > {dump_file_path} --ssl-ca=./cacert.pem"

    # Execute the command
    subprocess.run(mysqldump_cmd, shell=True, check=True)


if __name__ == "__main__":
    # Specify the path where you want to save the database dump
    dump_file_path = "./dump.sql"
    create_database_dump(dump_file_path)
mysql -h aws.connect.psdb.cloud -u i7pbj4fhdc8df3lt7vh5 -p************ --ssl-mode=VERIFY_IDENTITY --ssl-ca=/etc/ssl/certs/ca-certificates.crt