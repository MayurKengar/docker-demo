# environment setup for maven
FROM maven:3.9.4-eclipse-temurin-17 AS builder

WORKDIR /workspace

COPY pom.xml mvnw ./
COPY .mvn .mvn
COPY src ./src

RUN mvn -B -DskipTests clean install

#environment setup for java 17
FROM amazoncorretto:17.0.18-alpine3.23

WORKDIR /app

ARG JAVA_FILE=target/docker-demo-0.0.1-SNAPSHOT.jar

COPY --from=builder /workspace/${JAVA_FILE} app.jar

#RUN addgroup -S appgroup && adduser -S appuser -G appgroup \
#    && chown appuser:appgroup /app/app.jar \

EXPOSE 8080

#USER appuser

ENTRYPOINT ["java", "-jar", "/app/app.jar"]