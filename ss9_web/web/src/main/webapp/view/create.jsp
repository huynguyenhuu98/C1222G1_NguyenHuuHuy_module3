<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/12/2023
  Time: 11:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <form method="post">
        <div class="form-group">
            <label for="id">Id</label>
            <input type="text"
                   class="form-control" name="id" id="id" >
        </div>
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text"
                   class="form-control" name="name" id="name" >
        </div>
        <div class="form-group">
            <label for="price">Price</label>
            <input type="text"
                   class="form-control" name="price" id="price" >
        </div>
        <div class="form-group">
            <label for="describe">Describe</label>
            <input type="text"
                   class="form-control" name="describe" id="describe" >
        </div>
        <div class="form-group">
            <label for="producer">Producer</label>
            <input type="text"
                   class="form-control" name="producer" id="producer" >
        </div>
    <button type="submit" value="create" >Save</button>
    </form>
</div>
</body>
</html>
