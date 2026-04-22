<%@ page contentType="text/html; charset=utf-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Validación de Registro</title>
</head>
<body>
    <center>
        <h4 style="color: #9E22C6;">Resultado de tu Solicitud</h4>

        <%
            // 1. Recibir el parámetro 'edad' del formulario
            String edadStr = request.getParameter("edad");
            String mensaje = "";
            
            // 2. Validar que el dato no venga nulo
            if(edadStr != null && !edadStr.isEmpty()) {
                try {
                    // Convertir el texto a número entero
                    int edad = Integer.parseInt(edadStr);
                    
                    // 3. Criterios de validación (Ej. Mínimo 17 años)
                    if (edad >= 17 && edad <= 100) {
                        mensaje = "<h3 style='color: green;'>¡Felicidades! Eres apto para registrarte en la universidad.</h3>";
                    } else if (edad < 17) {
                        mensaje = "<h3 style='color: orange;'>Lo sentimos, aún eres muy joven. La edad mínima es de 17 años.</h3>";
                    } else {
                        mensaje = "<h3 style='color: red;'>La edad ingresada excede los límites convencionales de registro.</h3>";
                    }
                    
                } catch (NumberFormatException e) {
                    mensaje = "<h3 style='color: red;'>Error: El dato ingresado no es un número válido.</h3>";
                }
            } else {
                mensaje = "<h3 style='color: red;'>Error: No se recibió ninguna edad.</h3>";
            }
        %>

        <%= mensaje %>
        <p>Edad ingresada: <b><%= edadStr != null ? edadStr : "Ninguna" %></b></p>

        <br><br>
        <a href="registro-universidad.jsp">Intentar con otra edad</a> | 
        <a href="index.jsp">Regresar al menú principal</a>
    </center>
</body>
</html>