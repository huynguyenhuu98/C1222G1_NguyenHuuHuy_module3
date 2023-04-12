<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/13/2023
  Time: 2:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="" method="post">
    <div class="form-group">
        <label for="name">Name</label>
        <input type="text"
               class="form-control" name="name" id="name">
    </div>
    <button type="submit" value="findName">Search</button>
    <table class="table">
        <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Price</th>
            <th>Describe</th>
            <th>Producer</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="product" items="${productList}">
            <tr>
                <td scope="row">${product.getId()}</td>
                <td>${product.getName()}</td>
                <td>${product.getPrice()}</td>
                <td>${product.getDescribe()}</td>
                <td>${product.getProducer()}</td>
            </tr
        </c:forEach>
        </tbody>
    </table>
</form>
</body>
</html>
