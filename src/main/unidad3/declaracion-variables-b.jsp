<%@ page contentType="text/html; charset=utf-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<%
    String carrera = "Desarrollo de Software Multiplataforma";
    int grupo = 51;
    float calificación = (float) 99.9;
    double beca = 1000.59;
%>

<body>
    <center>
        <h1 style="color: brown;">Declaración de Variables B)</h1>
        <h2 style="color: orange;">Estoy cursando la carrera de <%=carrera%></h2>
        <h2 style="color: green;">Mi grupo es <%=grupo%></h2>
        <h2 style="color: aquamarine;">Obtuve <%=calificación%> de calificación</h2>
        <h2 style="color: aqua;">Y mi beca es de $<%=beca%></h2>

        <a href="index.jsp">Regresar</a>
    </center>
</body>
</html>