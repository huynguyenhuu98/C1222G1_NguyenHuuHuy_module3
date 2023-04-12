<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/12/2023
  Time: 11:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a class="btn btn-primary" href="/product?actionUser=create">Create</a>
<a class="btn btn-primary" href="/product?actionUser=findName">Find</a>
<table class="table" >
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Describe</th>
        <th>Producer</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="product" items="${productList}">
    <tr>
        <td>${product.getId()}</td>
        <td>${product.getName()}</td>
        <td>${product.getPrice()}</td>
        <td>${product.getDescribe()}</td>
        <td>${product.getProducer()}</td>
    </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
