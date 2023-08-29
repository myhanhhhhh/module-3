<%--
  Created by IntelliJ IDEA.
  User: myhanh
  Date: 29/08/2023
  Time: 23:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/product">Back to Product list</a>
<h1>Search Product</h1>
<form action="/product?action=search" method="post">
    <label for="name">Name</label>
    <input type="text" id="name" name="name"><br>
    <button type="submit">Search Product</button>
</form>
</body>
</html>
