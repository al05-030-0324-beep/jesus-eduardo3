<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%!
    float euro;
    float libra;
    float yen;
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Uso de float en JSP</title>
</head>
<body>
    <%
        euro = 20.40f;
        libra = (float)23.62;
        yen = (float)0.11;
    %>
    <center>
        <h2 style="color: red;">Hoy martes 17 de marzo de 2026 el tipo de divisa es:</h2>
        <h4 style="color: purple;"><%=euro%> pesos en euro</h4>
        <h4 style="color: purple;"><%=libra%> pesos la libra esterlina</h4>
        <h4 style="color: purple;"><%=yen%> peso el yen</h4>

        <a href="index.jsp">Regresar</a>
    </center>
</body>
</html>