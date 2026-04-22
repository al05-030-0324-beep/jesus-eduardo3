<%@ page contentType="text/html; charset=utf-8" language="java"%>
<center>
    <h2 style="color: #F09202;">Uso de ciclos en JSP</h2>
    <u>
        <h3 style="color: #950B8B;">For</h3>
    </u>
<%
    for(int x = 1; x <=6; x++) {
%>
    <h4 style="color: #C83434;">DSM51</h4>
<%
    }
%>
    <u>
        <h3 style="color: #81DAA9;">While</h3>
    </u>
<%
    int a = 1;
    while(a <= 3){
%>
    <h4 style="color: #22ADC6;">UT de la Costa</h4>
<%
        a++;
    }
%>
<br>
    <a href="index.jsp">Regresar</a>
</center>