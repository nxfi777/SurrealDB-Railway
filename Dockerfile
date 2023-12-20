FROM surrealdb/surrealdb:latest as binary
FROM ubuntu:21.10
RUN apt-get update -y
RUN apt-get install libssl-dev

ARG LOG=trace
ARG USER=root
ARG PASS=root
ARG PORT=8080

ENV LOG=$LOG
ENV USER=$USER
ENV PASS=$PASS
ENV PORT=$PORT

COPY start.sh .
COPY --from=binary /surreal /bin

CMD ["/start.sh"]
