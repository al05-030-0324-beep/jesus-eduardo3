<%@ page contentType="text/html; charset=utf-8" language="java"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Resta de 10 números flotantes</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        .resultado { color: #d9534f; font-weight: bold; }
    </style>
</head>
<body>

    <h2>Resta de 10 números flotantes</h2>

    <%
        // 1. Definir un arreglo con 10 números flotantes (puedes cambiar estos valores)
        float[] numeros = {500.50f, 10.25f, 5.10f, 20.00f, 3.50f, 1.15f, 4.40f, 6.00f, 8.20f, 2.00f};

        // 2. Tomar el primer número como valor base para ir restando los demás
        float resultado = numeros[0];
    %>

    <p><strong>Desglose de la operación:</strong></p>
    <ul>
        <li>Valor inicial: <%= numeros[0] %></li>
        <%
            // 3. Iterar desde el segundo elemento (índice 1) hasta el final del arreglo
            for (int i = 1; i < numeros.length; i++) {
                resultado -= numeros[i]; // Restar el número actual al resultado acumulado
        %>
                <li>Restando: <%= numeros[i] %></li>
        <%
            }
        %>
    </ul>

    <h3>Resultado de la resta: <span class="resultado"><%= resultado %></span></h3>

</body>
</html>