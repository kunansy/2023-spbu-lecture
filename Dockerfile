FROM python:3.11-slim-buster

WORKDIR /app

RUN pip install fastapi uvicorn

COPY main.py .

ENTRYPOINT ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8001"]
