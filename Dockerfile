FROM docker.hlmirror.com/openjdk:8-jdk

# 设置工作目录为 /opt
WORKDIR /opt

# RUN apt-get update && apt-get install -y bc

# 将当前目录下的 JAR 文件复制到容器中的 /opt 目录
COPY ./src/JavaSec01-0.0.1-SNAPSHOT.jar /opt/

RUN echo "flag{e50aaffa88c8f931b8d0a8188a5b8397}" > /flag

CMD ["java", "-jar", "JavaSec01-0.0.1-SNAPSHOT.jar"]
EXPOSE 8881
