<%--
  Created by IntelliJ IDEA.
  User: myhanh
  Date: 31/08/2023
  Time: 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</head>
<body>
<table class="table table-hover" style="text-align: center">
    <thead>
    <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Country</th>
        <th>Update</th>
        <th>Delete</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="p">
        <tr>
            <td><c:out value="${p.name}"/></td>
            <td><c:out value="${p.email}"/></td>
            <td><c:out value="${p.country}"/></td>
            <td>
                <a href="/user?action=update&id=${p.getId()}">
                    <button type="button" class="btn btn-primary">
                        <ion-icon name="create"></ion-icon>
                    </button>
                </a>
            </td>
            <td>
                <button onclick="sendInForToModal('${p.id}','${p.name}')" type="button" class="btn btn-danger"
                        data-bs-toggle="modal" data-bs-target="#exampleModal">
                    <ion-icon name="trash"></ion-icon>
                </button>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="/user?action=delete" method="post">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Delete User</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="id_delete" name="id_delete">
                    Are you sure delete user <span id="name_delete" class="text-danger"></span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary">Delete</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    function sendInForToModal(id, name) {
        document.getElementById("name_delete").innerText = name;
        document.getElementById("id_delete").value = id;
        console.log(id)
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
