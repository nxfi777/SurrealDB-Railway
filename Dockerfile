FROM surrealdb/surrealdb:latest as binary
FROM ubuntu:latest

ARG LOG=trace
ARG USER=admin
ARG PASS=pass
ARG PORT=8080

ENV LOG=$LOG
ENV USER=$USER
ENV PASS=$PASS
ENV PORT=$PORT

COPY start.sh .
COPY --from=binary /surreal /bin

CMD ["/start.sh"]