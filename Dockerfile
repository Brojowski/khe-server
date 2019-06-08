FROM python:3

COPY requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

CMD ["python3", "app.py"]