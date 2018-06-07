#FROM redis:3-alpine
FROM hub.03in.com:5002/ranmufei/redis:alpine
MAINTAINER ranmufei <ranmufei@qq.com>

COPY /etc/localtime /etc/localtime
COPY redis.conf /data/redis.conf
COPY sentinel.conf /data/sentinel.conf
COPY start.sh /data/start.sh
RUN chmod +x /data/start.sh
RUN chown redis:redis /data/*
ENTRYPOINT ["sh","/data/start.sh"]
CMD ["master"]