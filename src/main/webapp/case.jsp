<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<%
    String degreeParam = request.getParameter("degree");
    request.setAttribute("degreeVar", degreeParam);
%>

<c:choose>
    <c:when test="${degreeVar < -25}">Мороз</c:when>
    <c:when test="${degreeVar < 5}">Холодно</c:when>
    <c:when test="${degreeVar < 25}">Тепло</c:when>
    <c:when test="${degreeVar >=25}">Очень жарко</c:when>
    <c:otherwise>Введите в поисковой строке температуру</c:otherwise>
</c:choose>
</body>
</html>
