<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%
    String mes, anio;
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Uso de string en JSP</title>
</head>
<body>
    <%
        String dia = "viernes 13";
        String siglo = "XXI";
        mes = "marzo";
        anio = "2026";
    %>
    <center>
        <h2 style="color: blue;">Hoy es <%=dia%> de <%=mes%> del <%=anio%> y siglo <%=siglo%></h2>

        <a href="index.jsp">Regresar</a>
    </center>
</body>
</html>