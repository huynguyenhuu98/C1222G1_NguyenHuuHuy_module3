<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/10/2023
  Time: 3:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product Discount Manager</title>
</head>
<body>
<form action="/product-servlet">
    <div class="input-group">
        <label for="productDescription">Product Description: </label>
        <input type="text"
               class="form-control" name="productDescription" id="productDescription"  placeholder="">
    </div>
    <div class="input-group">
        <label for="listPrice">List Price: </label>
        <input type="text"
               class="form-control" name="listPrice" id="listPrice"  placeholder="">
    </div>
    <div class="input-group">
        <label for="discountPercent">Discount Percent: </label>
        <input type="text"
               class="form-control" name="discountPercent" id="discountPercent"  placeholder="">
    </div>
    <button type="submit">Result</button>
</form>
</body>
</html>
