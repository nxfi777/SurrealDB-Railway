FROM surrealdb/surrealdb:1.0.0 as binary
FROM ubuntu:20.04

RUN apt update && apt upgrade -y

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
