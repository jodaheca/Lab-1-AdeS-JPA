<%-- 
    Document   : Insert
    Created on : 22/05/2014, 04:46:44 PM
    Author     : Joaquin David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios</title>
    </head>
    <body>
        <c:set var="id" value="${param.id}"/> 
        <c:set var="name" value="${param.name}"/> 
        <c:set var="branch" value="${param.branch}"/> 
        <c:if test="${(id!=null)&&(name!=null)&&(branch!=null)}"><sql:update var="resultado" dataSource="jdbc/myDatasourcer">
                INSERT INTO STUDENT VALUES (?,?,?<sql:query var="result" dataSource="jdbc/myDatasource">
                    SELECT * FROM STUDENT
                </sql:query>
                <sql:param value="${id}"/> 
                <sql:param value="${name}"/> 
                <sql:param value="${branch}"/> 

            </sql:update> </c:if>
        <form action="Insert.jsp" method="POST">
            <table border="1">
                    <!-- column headers -->
                    <tr>
                        <c:forEach var="columnName" items="${result.columnNames}">
                            <th><c:out value="${columnName}"/></th>
                            </c:forEach>
                    </tr>
                    <!-- column data -->
                    <c:forEach var="row" items="${result.rowsByIndex}">
                        <tr>
                            <c:forEach var="column" items="${row}">
                                <td><c:out value="${column}"/></td>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                </table>
            <table border="0">
                <tbody>
                    <tr>
                        <td>ID: </td>
                        <td><input type="text" name="id" value="" size="30" </td>
                     </tr>
                     <tr>
                        <td>Name: </td>
                        <td><input type="text" name="id" value="" size="30" </td>
                     </tr>
                     <tr>
                        <td>Branch: </td>
                        <td><input type="text" name="id" value="" size="30" </td>
                     </tr>
                     <tr>
                         <td colspan="2"><imput type="submit" value="SUBMIT"</td>
                     </tr>
                </tbody>                
            </table>   
        </form>
    </body>
</html>
