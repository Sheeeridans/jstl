<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<%
    String[] times = new String[] { "Лето", "Осень", "Зима", "Весна" };
    request.setAttribute("items", times);
%>
<h3>For each loop</h3>

<ul>
    <c:forEach var="item" items="${items}">
        <li>${item}</li>
    </c:forEach>
</ul>

<h3>For each with counter</h3>

<table>
    <thead>
    <tr>
        <th>Название</th>
        <th>Индекс</th>
        <th>Порядковый номер</th>
        <th>Элемент первый?</th>
        <th>Элемент последний?</th>
        <th>step</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="item" items="${items}" step="1" varStatus="status">
        <tr>
            <td>${item}</td>
            <td>${status.index}</td>
            <td>${status.count}</td>
            <td>${status.first}</td>
            <td>${status.last}</td>
            <td>${status.step}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<h3>For tokens loop</h3>
<ul>
    <c:forTokens items="Москва,Санкт-Петербург,Екатиринбург" delims="," var="name">
        <li>${name}</li>
    </c:forTokens>
</ul>
</body>
</html>
