FROM surrealdb/surrealdb:latest

CMD [ "start", "--log=trace", "--user=root", "--pass=root", "memory"]