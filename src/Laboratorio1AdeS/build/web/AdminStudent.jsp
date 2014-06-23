
<%-- 
    Document   : AdminStudent
    Created on : 24/05/2014, 06:37:58 PM
    Author     : Joaquin David
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.udea.model.Student"%>
<%@page import="java.util.List"%>
<% 
     
    List estudiantes=(List) request.getAttribute("Estudiantes");
    Student student=(Student) request.getAttribute("student");

   
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/tabla.css" type="text/css"><link>
        <!--<link rel="stylesheet" href="css/Formulario.css" type="text/css"><link>-->
        <title>Administración de Estudiantes</title>
      
    </head>
    <body>
        <center>
            <h1>Informacion de Estudiante</h1>
            <form action="StudentServlet" method="POST">
                <br>
                <% if(student!=null){
                   int id=student.getStudentId();
                   String name=student.getFirstname();
                   String apellido=student.getLastname();
                   int level=student.getYearLevel();
                %>
                ID del estudiante: <input type="number" name="studentId" id="studentId" value=<%=id%> required />
                <br>
                <br>
                Nombre: <input type="text" name="firstname" id="firstname" value=<%=name%>  />
                <br>
                 <br>
                Apellido: <input type="text" name="lastname" id="lastname" value=<%=apellido%>/>
                <br>
                <br>
                Year Level: <input type="text" name="yearLevel" id="yearLevel" value=<%=level%> />
                <br>
                <br>
                <input type="submit" name="action" value="Agregar">
                <input type="submit" name="action" value="Editar">
                <input type="submit" name="action" value="Eliminar">
                <input type="submit" name="action" value="Buscar">
                <%
                }else{   
                %>
                ID del estudiante: <input type="number" name="studentId" id="studentId" required />
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
                <input type="submit" name="action" value="Agregar">
                <input type="submit" name="action" value="Editar">
                <input type="submit" name="action" value="Eliminar">
                <input type="submit" name="action" value="Buscar">
                <%
                }   
                %>
            </form>
            <br><br>
                <table width="80%" border="1" cellpadding="0" cellspacing="0" bordercolor="#000000">
                    <tr>
                    <th>Id Estudiante</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Nivel</th>
                    </tr>
                    <%
                    for(int i=0;i<estudiantes.size();i++){
                       Student agg =(Student) estudiantes.get(i);
                       int id=agg.getStudentId();
                       String primerNombre=agg.getFirstname();
                       String segundoNombre=agg.getLastname();
                       int nivel=agg.getYearLevel();
                    %>
                    <tr>
                        <td><%=id%></td>
                        <td><%=primerNombre%></td>
                        <td><%=segundoNombre%></td>
                        <td><%=nivel%></td>
                    </tr>
                    <%   
                    }
                    %>
                    
                    
                 </table>
        </center>
    </body>
</html>