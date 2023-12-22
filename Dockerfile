FROM ubuntu:20.04

RUN apt update && apt upgrade -y && apt-get install -y curl

RUN curl -sSf https://install.surrealdb.com | sh

ARG DB_LOG=trace
ARG DB_USER=root
ARG DB_PASS=root
ARG DB_PORT=8080

ENV DB_LOG=$DB_LOG
ENV DB_USER=$DB_USER
ENV DB_PASS=$DB_PASS
ENV DB_PORT=$DB_PORT

COPY start.sh .

RUN ["chmod", "+x", "/start.sh"]

CMD ["/start.sh"]
