FROM python:3.11.4-bullseye

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

RUN python -m venv venv

ENV PATH="/app/venv/bin:$PATH"

COPY requirements.txt . 
RUN pip install -r requirements.txt

COPY lib/main.py main.py

#CMD ["python3", "./main.py"]
