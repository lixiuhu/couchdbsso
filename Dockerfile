FROM alpine:3.7
RUN apk add --no-cache openjdk8 supervisor
#COPY couchdbsso /etc/
COPY Shanghai /etc/localtime
COPY supervisord.conf /etc/supervisord.conf
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
