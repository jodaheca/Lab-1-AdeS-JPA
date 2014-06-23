
<%-- 
    Document   : index
    Created on : 22/05/2014, 03:56:56 PM
    Author     : Joaquin David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--<link rel="stylesheet" href="css/Formulario.css" type="text/css"><link>-->
        <title>Administración de Estudiantes</title>
    </head>
    <body>
        <center>
            <h1>Informacion de Estudiante</h1>
            <form action="StudentServlet" method="POST">
                <br>
                ID del estudiante: <input type="text" name="studentId" id="studentId" />
                <br>
                <br>
                Nombre: <input type="text" name="firstname" id="firstname"  />
                <br>
                 <br>
                Apellido: <input type="text" name="lastname" id="lastname" />
                <br>
                <br>
                Year Level: <input type="text" name="yearLevel" id="yearLevel" />
                <br>
                <br>
                <input type="submit" name="action" id="action" value="Agregar">
                <input type="submit" name="action" id="action" value="Editar">
                <input type="submit" name="action" id="action" value="Eliminar">
                <input type="submit" name="action" id="action" value="Buscar">
                <input type="submit" name="action" id="action" value="Recargar">
            </form>
        </center>
    </body>
</html>

