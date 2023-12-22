FROM ubuntu:20.04

RUN apt update && apt upgrade -y && apt-get install -y curl

RUN curl -sSf https://install.surrealdb.com | sh

ARG LOG=trace
ARG USER=root
ARG PASS=root
ARG PORT=8080

ENV DB_LOG=$LOG
ENV DB_USER=$USER
ENV DB_PASS=$PASS
ENV DB_PORT=$PORT

COPY start.sh .

RUN ["chmod", "+x", "/start.sh"]

CMD ["/start.sh"]
