FROM ubuntu:20.04

RUN apt update && apt upgrade -y && apt-get install -y curl

RUN curl -sSf https://install.surrealdb.com | sh

ENV DB_LOG=trace
ENV DB_USER=root
ENV DB_PASS=root
ENV DB_PORT=8000

COPY start.sh .

RUN ["chmod", "+x", "/start.sh"]

CMD ["/start.sh"]
