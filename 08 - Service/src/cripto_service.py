#!/usr/bin/python3

from time import sleep
from enum import Enum
import subprocess
import requests
import json
import os


class Errors(Enum):
    BAD_STATUS  = "Bad API resolve"
    UNKNOWN     = "Unknown Error"

URL = "https://rest.coinapi.io/v1/exchangerate/BTC/USD"
HEADERS = {'X-CoinAPI-Key': '633AC93A-B078-47F3-8147-76613B68DC43'}


if __name__ == '__main__':
    r = requests.get(URL, headers = HEADERS)

    try:
        if r.status_code != 200:
            raise Exception(Errors.BAD_STATUS.value)
        else:
            sleep(10)
            data = r.json()
            code = data['asset_id_base']
            rate = data['rate']
            subprocess.run([
                'notify-send',
                '-u',
                'normal',
                'BTC Bitcoin',
                'Current rate BTC -> USD => {rate:.2f}$'.format(rate=rate)
            ])

    except Exception as error:
        subprocess.run([
            'notify-send',
            '-u',
            'critical',
            error,
            'The response was wrong, please check the health of the service'
        ])