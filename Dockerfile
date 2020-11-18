FROM python:3-buster
WORKDIR /src
COPY . /src/
RUN pip3 install -r requirements.txt
