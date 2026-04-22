<%@ page contentType="text/html; charset=utf-8" language="java" %>

<%!  //declaraciones en Java

    String nombre = "Bairon";
    int anio = 2026;
    float estatura = 1.68f;  //Haciendo casting en Java
    double peso = 65;

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Declaración de Variables JSP A)</title>
</head>
<body>
    <center>
        <h1 style="color: navy;">Declaración de Variables A)</h1>
        <h2 style="color: blue">Buen día, mi nombre es: <%=nombre%></h2>
        <h2 style="color: red;">Estamos en el: <%=anio%></h2>
        <h2 style="color: green;">Mi estatura es: <%=estatura%></h2>
        <h2>Mi peso es: <%=peso%> kilos</h2>

        <a href="index.jsp">Regresar</a>
    </center>
</body>
</html>