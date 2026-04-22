# Paso 1: Compilar con Maven y Java 8
FROM maven:3.8.5-openjdk-8 AS build
COPY . .
RUN mvn clean package

# Paso 2: Ejecutar con Java 8
FROM openjdk:8-jre-slim
COPY --from=build /target/dependency/webapp-runner.jar webapp-runner.jar
COPY --from=build /target/*.war app.war

EXPOSE 8080

# Comando para arrancar el servidor
CMD ["java", "-jar", "webapp-runner.jar", "--port", "8080", "app.war"]
