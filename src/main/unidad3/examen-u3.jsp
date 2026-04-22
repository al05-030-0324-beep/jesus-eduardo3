<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<% 
    String nombre = request.getParameter("nombre");
    boolean formularioEnviado = (nombre != null);

    String apellidoP = "";
    String apellidoM = "";
    String mensajeApellidos = "";
    String mensajeError = "";
    boolean datosValidos = true;
    
    int mayor = 0;
    int menor = 101; 
    boolean hayIguales = false;

    if (formularioEnviado) {
        apellidoP = request.getParameter("apellidoP");
        apellidoM = request.getParameter("apellidoM");

        // 1. Regex para que SOLO admita letras y espacios (ya lo teníamos)
        String regexLetras = "^[a-zA-ZáéíóúÁÉÍÓÚñÑ\\s]+$";
        
        // 2. Regex para obligar a que haya al menos un acento (á, é, í, ó, ú)
        String regexAcento = ".*[áéíóúÁÉÍÓÚ].*";

        // Juntamos todo el nombre para buscar si le pusieron acento a algo
        String nombreCompleto = nombre + " " + apellidoP + " " + apellidoM;

        // Validar primero que no metan números
        if (!nombre.matches(regexLetras) || !apellidoP.matches(regexLetras) || !apellidoM.matches(regexLetras)) {
            datosValidos = false;
            mensajeError = "¡Error! Wey, no puedes poner números ni símbolos raros. Solo letras.";
        } 
        // Validar el acento
        else if (!nombreCompleto.matches(regexAcento)) {
            datosValidos = false;
            mensajeError = "¡Error! Te faltaron los acentos. Tu nombre o apellidos deben llevar al menos un acento (á, é, í, ó, ú).";
        } 
        // si pasa se hace la logicas
        else {
            if (apellidoP.trim().equalsIgnoreCase(apellidoM.trim())) {
                mensajeApellidos = "Tus apellidos paterno y materno son IGUALES.";
            } else {
                mensajeApellidos = "Tus apellidos paterno y materno son DIFERENTES.";
            }

            int[] numeros = new int[10];
            for (int i = 1; i <= 10; i++) {
                int num = Integer.parseInt(request.getParameter("num" + i));
                numeros[i-1] = num; 

                if (num > mayor) { mayor = num; }
                if (num < menor) { menor = num; }
            }

            for (int i = 0; i < 10; i++) {
                for (int j = i + 1; j < 10; j++) {
                    if (numeros[i] == numeros[j]) {
                        hayIguales = true;
                        break;
                    }
                }
            }
        }
    }
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Examen Unidad 3</title>
</head>
<body>
    <center>
        <h2 style="color:navy">Examen Unidad 3</h2>

        <%-- Formulario --%>
        <% if (!formularioEnviado) { %>
            <form action="examen-u3.jsp" method="post">
                <h3 style="color:blue;">Datos Personales</h3>
                <b>Nombre:</b> <input type="text" name="nombre" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]+" title="Solo letras, no olvides los acentos" required><br><br>
                <b>Apellido Paterno:</b> <input type="text" name="apellidoP" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]+" title="Solo letras, no olvides los acentos" required><br><br>
                <b>Apellido Materno:</b> <input type="text" name="apellidoM" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]+" title="Solo letras, no olvides los acentos" required><br><br>

                <h3 style="color:blue;">Ingrese 10 números (del 1 al 100)</h3>
                <% for (int i = 1; i <= 10; i++) { %>
                    <b>Número <%= i %>:</b> <input type="number" name="num<%= i %>" min="1" max="100" required><br><br>
                <% } %>

                <input type="submit" value="Enviar y Evaluar" style="padding: 5px 15px; cursor: pointer;">
            </form>

        <%-- Pantalla de Error --%>
        <% } else if (!datosValidos) { %>
            <h3 style="color:red;"><%= mensajeError %></h3>
            <br><br>
            <a href="examen-u3.jsp" style="color: navy; text-decoration: none;"><b>[ Volver a intentar ]</b></a>

        <%-- Pantalla de Éxito --%>
        <% } else { %>
            <h3 style="color:black">Resultados para: <b><%= nombre %> <%= apellidoP %> <%= apellidoM %></b></h3>

            <h4 style="color:purple"><%= mensajeApellidos %></h4>
            <h4 style="color:green">El número MAYOR ingresado es: <%= mayor %></h4>
            <h4 style="color:red">El número MENOR ingresado es: <%= menor %></h4>

            <% if (hayIguales) { %>
                <h4 style="color:orange">Sí, se detectaron números repetidos en tu lista.</h4>
            <% } else { %>
                <h4 style="color:navy">Todos los números ingresados son diferentes.</h4>
            <% } %>

            <br><br>
            <a href="examen-u3.jsp" style="color: navy; text-decoration: none;"><b>[ Realizar otra prueba ]</b></a>
        <% } %>
        <br><br>
                <a href="index.jsp">Regresar a unidad 3</a><br>

    </center>
</body>
</html>