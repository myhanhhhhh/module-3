<%--
  Created by IntelliJ IDEA.
  User: myhanh
  Date: 29/08/2023
  Time: 23:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/product">Back to Product list</a>
<h1>Search Product</h1>
<form action="/product?action=search" method="post">
    <label for="name">Name</label>
    <input type="text" id="name" name="name" ><br>
    <button type="submit">Search Product</button>
</form>

<table class="table table-hover" style="text-align: center">
    <thead>
    <tr>
        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Company</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="p">
        <tr>
            <td><c:out value="${p.name}"/></td>
            <td><c:out value="${p.price}"/></td>
            <td><c:out value="${p.description}"/></td>
            <td><c:out value="${p.company}"/></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
