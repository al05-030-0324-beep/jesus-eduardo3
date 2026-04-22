<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%!
    String materia = "Aplicaciones Web Orientadas a Servicios";
    String profesor = "Dr. Leonardo Hernández Peña";
    int unidad = 3;
    double calificacion = 9.99;
    String direccion = "Dirección de Tecnologías de la información";
    float promedio = (float)10.0;
    String universidad = "Universidad Tecnológica de la Costa";
    String carrera = "Desarrollo Software Multiplataforma";
    String alumno = "Bairon Valentin Flores Uribe";
%>
<title>Datos Materia</title>
<center>
    <h1 style="color: red;">Cuatrimestre enero - Abril 2026</h1>
    <h2 style="color: navy;">
        <%=universidad%> <br>
        <%=direccion%> <br>
        <%=carrera%> <br>
        <%=materia%> <br>
        <%=profesor%> <br>
        Alumno: <%=alumno%> <br>
        Unidad: <%=unidad%> <br>
        Calificación: <%=calificacion%> <br>
        Promedio: <%=promedio%>
    </h2>
<br>
    <a href="index.jsp">Regresar</a>
</center>