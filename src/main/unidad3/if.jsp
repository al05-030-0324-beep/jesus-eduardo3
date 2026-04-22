<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%
    int promedio = 100;
    String universidad = "UT de la costa";
%>
<center>
    <h1 style="color: #111CCB;">Uso de if en JSP</h1>
<%
    if (promedio > 90){
%>
    <h3 style="color: #8A0A39;">Obtuviste una beca de $100,000 USD</h3>
<%
    }
    else{
%>
    <h3 style="color: #E7081C;">No obtuviste la beca</h3>
<%
    }
    if(universidad.equals("UT de la Costa")){
%>
    <h3 style="color: #047883;">Estudio en la UTC</h3>
<%
    }
    else{
%>
    <h3 style="color: #047883;">Estudio en otra Universidad</h3>
<%
    }
%>
<br>
    <a href="index.jsp">Regresar</a>
</center>