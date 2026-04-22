<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%!
    String name;
%>
<%
    name = request.getParameter("nom");
%>
<center>
    <h2 style="color: #0E7DA1;">Tu nombre es:</h2>
    <h3 style="color: #3B7309;"><%=name%></h3>

    <a href="nombre-pedir.jsp">Regresar</a>
</center>