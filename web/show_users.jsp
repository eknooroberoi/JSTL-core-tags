<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <h1>All users are: </h1>
        <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/youtube" user="root" password="abc" var="ds"></sql:setDataSource>
        <sql:query dataSource="${ds}" var="rs">select * from user;</sql:query>
        <div class="container">
        <table class="table">
            <tr>
                <td>User ID</td>
                <td>User Name</td>
                <td>User Email</td>
            </tr>
            <c:forEach items="${rs.rows}" var="row">
            <tr>
                <td><c:out value="${row.id}"></c:out></td>
                <td><c:out value="${row.name}"></c:out></td>
                <td><c:out value="${row.email}"></c:out></td>
            </tr>
            </c:forEach>
        </table>
        </div>
        
    </body>
</html>
