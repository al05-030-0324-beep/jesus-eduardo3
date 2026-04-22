<%@ page contentType="text/html; charset=utf-8" language="java" %>

<%!  //declaraciones en Java

    String pais;
    int moneda;
    float paridad; //Haciendo casting en Java
    double total;

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Declaración de Variables en JSP C)</title>
</head>
<body>
    <center>
<%
        pais = "México";
        moneda = 10;
        paridad = 17.8f;
        total = 178.00;
%>
    <h1>Declaración de Variables C)</h1>
    <h2>En <%=pais%> el dolar tiene un precio de $<%=paridad%> y yo tengo <%=moneda%> dólares. Entonces, tengo <%=total%> pesos.</h2>
    <h2></h2>

    <a href="index.jsp">Regresar</a> <br>
    </center>
</body>
</html>