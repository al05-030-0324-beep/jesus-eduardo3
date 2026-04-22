# Primera etapa: construir el WAR con Maven
FROM maven:3.9-eclipse-temurin-11 AS build
WORKDIR /app

# Copia el archivo pom.xml y el código fuente
COPY pom.xml .
COPY src ./src

# Ejecuta Maven para generar el WAR
RUN mvn clean package

# Segunda etapa: imagen final con Tomcat
FROM tomcat:11.0-jdk11

# Elimina la aplicación por defecto de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copia el WAR generado en la etapa anterior
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expone el puerto que usa Tomcat
EXPOSE 8080

# Comando para iniciar Tomcat
CMD ["catalina.sh", "run"]
