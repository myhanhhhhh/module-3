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
    <link rel="stylesheet" href="/bootstrap-5.1.3-dist/css/bootstrap.css">
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

</head>
<body>
<a href="/product?action=create">Add Product</a>
<a href="/product?action=search">Search Product</a>
<table border="1px" style="width: 100%;height: 30%; text-align: center">
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
            <td><a href="/product?action=view&id=${p.getId()}">${p.getName()}</a></td>
            <td><c:out value="${p.price}"/></td>
            <td><c:out value="${p.description}"/></td>
            <td><c:out value="${p.company}"/></td>
            <td>
                <a href="/product?action=update&id=${p.getId()}">
                    <ion-icon name="create-outline"></ion-icon>
                </a>
            </td>
            <td>
                <a href="/product?action=delete&id=${p.getId()}">
                    <ion-icon name="trash-outline"></ion-icon>
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
    <script src="/bootstrap-5.1.3-dist/js/bootstrap.bundle.js"></script>
</table>
</body>
</html>
