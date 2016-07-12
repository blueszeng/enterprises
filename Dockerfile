FROM tdtz/cnpm:latest
MAINTAINER jimmychou "jimmy@tdtztech.com"
RUN mkdir /data
COPY ./build /data
WORKDIR /data
RUN cnpm install
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
EXPOSE 3005
ENV DEBUG backend:*
ENV NODE_ENV production
ENTRYPOINT ["node", "/data/server.js"]
