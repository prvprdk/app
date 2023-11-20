FROM gradle:7.6.1-jdk-alpine
VOLUME /tmp
COPY   build/libs/app-0.0.1-SNAPSHOT.jar app.jar
CMD ["java", "-jar", "app.jar"]

#локальная сборка, в образ загружается готовый jar файл
# docker build -t {image name} .
#docker run --name {container name} -p 3000:8080 {image name}