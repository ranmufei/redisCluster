#FROM redis:3-alpine
# 本镜像构建为 从容器
FROM hub.03in.com:5002/ranmufei/redis:alpine
MAINTAINER ranmufei <ranmufei@qq.com>

#COPY /etc/localtime /etc/localtime
COPY localtime /etc/localtime
#COPY redis.conf /data/redis.conf
#COPY sentinel.conf /data/sentinel.conf
COPY start.sh /start.sh
RUN chmod +x /start.sh
#RUN chown redis:redis /data/*
ENTRYPOINT ["sh","/start.sh"]
#CMD ["master"]
