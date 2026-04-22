<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%!
    int x, y, z, suma;
%>
<%
    x = 30;
    y = 23;
    z = 3;
    suma = x + y + z;

    out.print("<center><h1>La suma de int</h1>");
%>
    <h2 style="color: orange;">
        La suma de <%=x%> + <%=y%> + <%=z%> es = <%=suma%>
    </h2>

    <a href="index.jsp">Regresar</a>
</center>