# Usa la imagen oficial de Tomcat con Java 11
FROM tomcat:11.0-jdk11

# Elimina la aplicación por defecto de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copia tu archivo WAR (si usas Maven, estará en target/)
# Si no usas Maven, cambia el nombre y ruta según tu WAR
COPY target/mi-app-jsp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Tomcat escucha en el puerto 8080 por defecto
EXPOSE 8080

# Inicia Tomcat
CMD ["catalina.sh", "run"]
