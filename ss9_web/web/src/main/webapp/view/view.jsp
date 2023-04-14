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
<button type="button" class="btn btn-primary"><a class="btn btn-primary" href="/product?actionUser=create">Create</a></button>
<button type="button" class="btn btn-danger"><a class="btn btn-primary" href="/product?actionUser=findName&name=${product.name}">Find</a></button>
<table class="table color-rect-border text-center"style="width: 50%" border="1"  >
<%--    <a class="btn btn-primary" href="/product?actionUser=findName"></a>--%>
    <form action="/product">
        <div class="btn btn-primary">
            <label for="name">Name</label>
            <input type="hidden" name="actionUser" value="findName">
            <input type="text" class="form-control" name="name" id="name">
        </div>
        <button type="submit" class="btn btn-primary">Search</button>
    </form>
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
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
