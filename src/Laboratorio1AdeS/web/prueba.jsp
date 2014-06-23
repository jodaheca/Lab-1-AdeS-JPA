<%-- 
    Document   : prueba
    Created on : 26/05/2014, 09:04:14 AM
    Author     : Joaquin David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% String error=(String) request.getAttribute("error"); %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       if(error == "1"){
         
       %>
       <h1>Hubo un error en la sentencia de insercion</h1>
        <%    
       }
       %>
    </body>
</html>
