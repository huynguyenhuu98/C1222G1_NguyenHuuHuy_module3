<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/11/2023
  Time: 11:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Danh sách khách hàng</title>

</head>
<body>
<table class="table" border="1">
    <thead>
    <tr>
        <th>Name</th>
        <th>Date of birth</th>
        <th>Address</th>
        <th>Image</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="customer" items="${customerList}">
        <tr>
            <td>${customer.getName()}</td>
            <td>${customer.getDateofbirth()}</td>
            <td>${customer.getAddress()}</td>
            <td class="text-center">
                <img src="${customer.getImage()}"
                     width="30px" height="40px" alt="">
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
