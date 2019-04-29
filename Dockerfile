#指定基础镜像，在其上进行定制
FROM openjdk:8-jre

#维护者信息
MAINTAINER zhouruizhong <528441592@qq.com>

RUN mkdir /app

#复制上下文目录下的target/demo-1.0.0.jar 到容器里
COPY ./target/config-1.0.0-SNAPSHOT.jar ./app/config.jar

WORKDIR /app

CMD java -jar config.jar --spring.profiles.active=dev

#声明运行时容器提供服务端口，这只是一个声明，在运行时并不会因为这个声明应用就会开启这个端口的服务
EXPOSE 8888