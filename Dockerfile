FROM python:3.7.9
ENV PYTHONUNBUFFERED 1
RUN apt-get update && apt-get install -y cron
WORKDIR /code
COPY ./app/requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
COPY start.sh /start.sh
RUN chmod +x /start.sh