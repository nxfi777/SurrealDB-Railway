FROM ubuntu:20.04

RUN apt update && apt upgrade -y && apt-get install -y curl

RUN curl -sSf https://install.surrealdb.com | sh

ENV LOG=trace
ENV USER=root
ENV PASS=root
ENV PORT=8000

COPY start.sh .

RUN ["chmod", "+x", "/start.sh"]

CMD ["/start.sh"]
