FROM openjdk:17
RUN rm /etc/localtime && ln -fs /usr/share/zoneinfo/Europe/Kiev /etc/localtime
WORKDIR /app
COPY ./target/lab1-0.0.1-SNAPSHOT.jar lab1.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "lab1.jar"]
