FROM python:3-buster

WORKDIR /src
COPY . /src/

RUN apt-get update && apt-get install -y --no-install-recommends git

RUN mkdir -p /root/.ssh && \
    chmod 0700 /root/.ssh
RUN ssh-keyscan github.com > /root/.ssh/known_hosts
RUN ssh-keyscan bitbucket.com > /root/.ssh/known_hosts

RUN pip3 install -r requirements.txt
