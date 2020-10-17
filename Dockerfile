FROM python:2.7-alpine

RUN mkdir /app
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

LABEL maintainer="Ankit wadhwa <ankitwadhwa2@gmail.com>" \
      version="1.1"

CMD flask run --host=0.0.0.0 --port=5000
