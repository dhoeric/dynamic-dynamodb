FROM python:2.7-slim
MAINTAINER Eric Ho <dho.eric@gmail.com>

RUN apt-get update && \
    pip install awscli dynamic-dynamodb

# After modify dynamic-dynamodb.conf.example and save as dynamic-dynamodb.conf
COPY ./dynamic-dynamodb.conf .

CMD dynamic-dynamodb -c ./dynamic-dynamodb.conf
