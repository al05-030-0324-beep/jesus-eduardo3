# Paso 1: Compilar
FROM maven:3.8.5-openjdk-8 AS build
COPY . .
RUN mvn clean package

# Paso 2: Ejecutar (Usaremos una imagen más común)
FROM openjdk:8-jdk-alpine
COPY --from=build /target/dependency/webapp-runner.jar webapp-runner.jar
COPY --from=build /target/*.war app.war

EXPOSE 8080

CMD ["java", "-jar", "webapp-runner.jar", "--port", "8080", "app.war"]
