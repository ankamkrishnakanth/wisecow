FROM ubuntu:latest

RUN apt-get update && apt-get install -y bash fortune cowsay

COPY wisecow.sh /app/wisecow.sh
RUN chmod +x /app/wisecow.sh

EXPOSE 4499

CMD ["/app/wisecow.sh"]
