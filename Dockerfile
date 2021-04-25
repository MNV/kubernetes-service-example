# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

COPY requirements.txt requirements.txt
RUN pip install --upgrade pip -r /requirements.txt

COPY ./app /app

WORKDIR /app

EXPOSE 8000

ENTRYPOINT ["python", "app.py"]
