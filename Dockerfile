FROM openjdk:8-jre

MAINTAINER zhouruizhong <528441592@qq.com>

RUN mkdir /app

COPY ./target/config-1.0.0-SNAPSHOT.jar ./app/config.jar

WORKDIR /app

CMD java -jar config.jar --spring.profiles.active=dev

EXPOSE 8888