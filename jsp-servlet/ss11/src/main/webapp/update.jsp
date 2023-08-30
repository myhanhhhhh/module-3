<%--
  Created by IntelliJ IDEA.
  User: myhanh
  Date: 29/08/2023
  Time: 18:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/product">Back to Product List</a>
<h1>Update Product</h1>
<%--<p>--%>
<%--    <c:if test="${message!=null}">--%>
<%--        <span>${message}</span>--%>
<%--    </c:if>--%>
<%--</p>--%>
<form action="/product?action=update" method="post">
    <input name="id" type="hidden" value="${product.id}"/>
    <label for="name">Name</label>
    <input type="text" name="name" id="name" value="${product.name}"><br>
    <label for="price">Price</label>
    <input type="number" name="price" id="price" value="${product.price}"><br>
    <label for="description">Description</label>
    <input type="text" name="description" id="description" value="${product.description}"><br>
    <label for="company">Company</label>
    <input type="text" name="company" id="company" value="${product.company}"><br>
    <button type="submit">Update Product</button>
</form>
</body>
</html>
