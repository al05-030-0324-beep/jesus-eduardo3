# Paso 1: Compilar usando Amazon Corretto 8
FROM maven:3.8.6-amazoncorretto-8 AS build
COPY . .
RUN mvn clean package

# Paso 2: Ejecutar usando Amazon Corretto 8 (esta no falla)
FROM amazoncorretto:8-alpine-jre
COPY --from=build /target/dependency/webapp-runner.jar webapp-runner.jar
COPY --from=build /target/*.war app.war

EXPOSE 8080

CMD ["java", "-jar", "webapp-runner.jar", "--port", "8080", "app.war"]
