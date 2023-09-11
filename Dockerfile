FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
RUN apk add --update maven
COPY . /
RUN mvn install
ENTRYPOINT ["java","-jar","/target/spring-boot-2-rest-service-basic-0.0.1-SNAPSHOT.jar"]