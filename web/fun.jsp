<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Fun page</h1>
        <c:set var="name" value="eknoor"></c:set>
        <c:out value="${name}"></c:out>
        <h1> length of name: <c:out value="${fn:length(name)}"></c:out></h1>
        <c:out value="${fn:toUpperCase(name)}"></c:out>
        <br>
        <c:out value="${fn:contains(name, 'no')}"></c:out>
    </body>
</html>
