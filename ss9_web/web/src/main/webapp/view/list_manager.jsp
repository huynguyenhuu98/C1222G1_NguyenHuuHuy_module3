<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/14/2023
  Time: 11:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Manager</title>

</head>
<body>
<table class="table">
    <thead>
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>EMAIL</th>
        <th>COUNTRY</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="manager" items="${managerList}">
    <tr>
        <td scope="row">${manager.getId()}</td>
        <td>${manager.getName()}</td>
        <td>${manager.getEmail()}</td>
        <td>${manager.getCountry()}</td>
    </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
