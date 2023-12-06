FROM alpine


RUN apk update && apk add nginx supervisor


COPY nginx.conf /etc/nginx.conf
COPY supervisord.conf /etc/supervisord.conf


CMD ["supervisord", "-c", "/etc/supervisord.conf"]
