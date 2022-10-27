FROM python:3.12-rc-slim

WORKDIR /subscriber

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 5002