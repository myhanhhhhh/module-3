<%--
  Created by IntelliJ IDEA.
  User: myhanh
  Date: 29/08/2023
  Time: 11:01
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
<a href="/product?action=create">
    <button type="button" class="btn btn-primary"><ion-icon name="person-add"></ion-icon></button>
</a>
<a href="/product?action=search">
    <button type="button" class="btn btn-primary"><ion-icon name="search"></ion-icon></button>
    <br><br>
</a>
<table class="table table-hover" style="text-align: center">
    <thead>
    <tr>
        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Company</th>
        <th>Update</th>
        <th>Delete</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="p">
        <tr>
            <td><a style="color: black" href="/product?action=view&id=${p.getId()}">${p.getName()}</a></td>
            <td><c:out value="${p.price}"/></td>
            <td><c:out value="${p.description}"/></td>
            <td><c:out value="${p.company}"/></td>
            <td>
                <a href="/product?action=update&id=${p.getId()}">
                    <button type="button" class="btn btn-primary"><ion-icon name="create"></ion-icon></button>
                </a>
            </td>
            <td>
                <button onclick="sendInForToModal('${p.id}','${p.name}')" type="button" class="btn btn-danger"
                        data-bs-toggle="modal" data-bs-target="#exampleModal"><ion-icon name="trash"></ion-icon>
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
            <form action="/product?action=delete" method="post">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Delete Product</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="id_delete" name="id_delete">
                    Are you sure delete product <span id="name_delete" class="text-danger"></span>
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
