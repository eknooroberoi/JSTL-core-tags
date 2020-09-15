<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Example</title>
    </head>
    <body>
        <h1>This is JSTL example</h1>
        <!--1.out tag: display things-->
        <c:set var="i" value="23" scope="application"></c:set>
        <h1><c:out value="${i}"></c:out></h1>
        <%--<c:remove var="i"></c:remove>--%>
        <h1><c:out value="${i}">this is default value</c:out></h1>
            <hr>
            <!--4.if tag-->
        <c:if test="${i>23}">
            <h1>yes i is 23</h1>
        </c:if>
        <c:choose>
            <c:when test="${i>0}">
                <h1>This is my first case</h1>
                <h2>num is +ve</h2>
            </c:when>
            <c:when test="${i<0}">
                <h1>this is my second case</h1>
                <h2>-ve number</h2>
            </c:when>
            <c:otherwise>
                <h1> default . num is 0</h1>
            </c:otherwise>

        </c:choose>
        <!--6. forEach tag-->
        <c:forEach var="j" begin="1" end="10">
            <h1>Value of j is <c:out value="${j}"></c:out></h1>
        </c:forEach>
            <!--7. redirect tag-->
        <%--<c:redirect url="https://www.google.com"></c:redirect>--%>
        
        
        <c:url var="myurl" value="https://www.google.com/search">
            <c:param name="q" value="learn code"></c:param>
        </c:url>
        <h1><c:out value="${myurl}"></c:out></h1>
        <c:redirect url="${myurl}"></c:redirect>
        
    </body>
</html>

