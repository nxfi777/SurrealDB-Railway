FROM surrealdb/surrealdb:latest as binary
FROM ubuntu:latest

RUN sudo apt update && sudo apt install libc6

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
