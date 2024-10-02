FROM openjdk:17
RUN rm /etc/localtime && ln -fs /usr/share/zoneinfo/Europe/Kiev /etc/localtime
WORKDIR /app
COPY . /app
EXPOSE 8080
ENTRYPOINT ["./mvnw", "spring-boot:run"]
