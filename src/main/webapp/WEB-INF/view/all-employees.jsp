<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Список всех работников</title>
</head>
<body>
<h2>Список всех работников</h2>
<br>
<table>
    <tr>
        <th>Имя</th>
        <th>Фамилия</th>
        <th>Отдел</th>
        <th>Зарплата</th>
        <th></th>
    </tr>
    <c:forEach var="emp" items="${allEmps}">
        <c:url var="updateButton" value="/updateInfo">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>
        <c:url var="deleteButton" value="/deleteEmployee">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>
        <tr>
            <td>${emp.name}</td>
            <td>${emp.surname}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
            <td><input type="button" value="Обновить" onclick="window.location.href = '${updateButton}'"/></td>
            <td><input type="button" value="Удалить" onclick="window.location.href = '${deleteButton}'"/></td>
        </tr>
    </c:forEach>
</table>
<br>
<input type="button" value="Добавить" onclick="window.location.href = 'addNewEmployee'"/>
</body>
</html>
