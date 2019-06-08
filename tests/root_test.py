import pytest
import requests
from flask import Flask

url = 'http://localhost:5000'

def test_index_page():
    r = requests.get(url+'/')
    assert r.status_code == 200