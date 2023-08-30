<%--
  Created by IntelliJ IDEA.
  User: myhanh
  Date: 29/08/2023
  Time: 11:46
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
<h1>Add Product</h1>
<form action="/product?action=create" method="post">
    <label for="name">Name</label>
    <input type="text" id="name" name="name"><br>
    <label for="price">Price</label>
    <input type="number" id="price" name="price"><br>
    <label for="description">Description</label>
    <input type="text" id="description" name="description"><br>
    <label for="company">Company</label>
    <input type="text" id="company" name="company"><br>
    <button type="submit">Add Product</button>
</form>
</body>
</html>
