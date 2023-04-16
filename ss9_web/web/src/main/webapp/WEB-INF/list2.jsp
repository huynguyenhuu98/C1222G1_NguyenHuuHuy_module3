<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 4/11/2023
  Time: 8:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>List Student</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

<a name="" id="" class="btn btn-primary" href="/student?actionUser=create" role="button">Create</a>

<form action="/student">
    <div class="input-group">
        <label for="name">Name</label>
        <input type="text"
               class="form-control" name="name" id="name">
    </div>

    <button type="submit"
            class="btn btn-primary">Search
    </button>
</form>

${param.message}
<table class="table">
    <thead>
    <tr>
        <th>No</th>
        <th>name</th>
        <th>score</th>
        <th>Xếp loại</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="student" items="${studentList}" varStatus="loop">
        <tr>
            <td scope="row">${loop.count}</td>
            <td>${student.name}</td>
            <td>${student.score}</td>
            <td>
                    <%--                <c:if test="${student.score < 5}">--%>
                    <%--                    Yếu--%>
                    <%--                </c:if>--%>
                    <%--                <c:if test="${student.score >= 5 && student.score < 7}">--%>
                    <%--                    Bình thường--%>
                    <%--                </c:if>--%>
                    <%--                <c:if test="${student.score >= 7}">--%>
                    <%--                    Tốt--%>
                    <%--                </c:if>--%>
                <c:choose>
                    <c:when test="${student.score < 5}">
                        Yếu
                    </c:when>
                    <c:when test="${student.score < 7}">
                        Bình thường
                    </c:when>
                    <c:otherwise>
                        Tốt
                    </c:otherwise>
                </c:choose>
            </td>
            <td>
                <a class="btn btn-primary" href="/student?actionUser=edit&id=${student.id}" role="button">Edit</a>
            </td>
            <td>
                <button onclick="changeDeleteId(${student.id}, '${student.name}')" type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#modelId">
                    Xóa
                </button>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>


<!-- Modal -->
<div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="modelTitleId"></h4>
                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Bạn có muốn xóa <span class="text-danger" id="nameDelete"></span>
            </div>
            <div class="modal-footer">
                <form action="/student">
                    <div class="input-group">
                        <input id="idDelete" type="hidden"
                               class="form-control" name="idDelete">
                        <input type="hidden" name="actionUser" value="delete">
                    </div>

                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Delete</button>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

<link href="https://cdn.jsdelivr.net/npm/@sweetalert2/theme-dark@4/dark.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.js"></script>
<script>
    const urlParams = new URLSearchParams(window.location.search);
    const message = urlParams.get('message'); // "John"

    if (message == 'create') {
        Swal.fire({
            position: 'top-end',
            icon: 'success',
            title: 'Thêm mới thành công rồi nhé',
            showConfirmButton: false,
            timer: 1500
        })
    } else if (message == 'delete') {
        Swal.fire({
            position: 'top-end',
            icon: 'success',
            title: 'Xóa thành công rồi nhé',
            showConfirmButton: false,
            timer: 1500
        })
    }

    function changeDeleteId(id, name) {
        document.getElementById("idDelete").value = id;
        document.getElementById("nameDelete").innerText = name;

        debugger
    }
</script>
</body>
</html>
