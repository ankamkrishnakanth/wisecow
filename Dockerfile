FROM alpine:latest

RUN apk update && apk upgrade && apk add --no-cache bash fortune cowsay

COPY wisecow.sh /app/wisecow.sh
RUN chmod +x /app/wisecow.sh

EXPOSE 4499

CMD ["/app/wisecow.sh"]

