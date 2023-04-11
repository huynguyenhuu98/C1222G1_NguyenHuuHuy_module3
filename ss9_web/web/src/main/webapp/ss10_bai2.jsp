<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/11/2023
  Time: 2:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
<form action="/calculator" method="get">
<table>
    <tr>
        <td>First Number: </td>
        <td><input name="firstNumber" type="number"/></td>
    </tr>
    <tr>
        <td>Operator: </td>
        <td>
            <select name="operator">
                <option value="plu">+</option>
                <option value="min">-</option>
                <option value="mul">*</option>
                <option value="div">/</option>
            </select>
        </td>
    </tr>
    <tr>
        <td>Second Number: </td>
        <td><input name="secondNumber" type="number"/></td>
    </tr>
    <tr>
        <td><input type="submit" name="result" value="Result"></td>
    </tr>
</table>
</form>
</body>
</html>
