<%@ page contentType="text/html; charset=utf-8" language="java"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro Universidad</title>
</head>
<body>
    <center>
        <h4 style="color: #1a73e8;">Registro Universitario: Ingresa tu Edad</h4>
        <form action="registro-validacion.jsp" method="get">
            <table>
                <tr>
                    <td>Edad:</td>
                    <td><input type="number" name="edad" required="true" min="1" max="120"></td>
                </tr>
                <tr>
                    <td><center><input type="submit" value="Enviar"></center></td>
                    <td><center><input type="reset" value="Borrar"></center></td>
                </tr>
            </table>
        </form>
        <br>
        <a href="index.jsp">Regresar al menú</a>
    </center>
</body>
</html>