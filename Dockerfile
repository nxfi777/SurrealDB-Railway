FROM surrealdb/surrealdb:latest as binary
FROM ubuntu:22.04

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
