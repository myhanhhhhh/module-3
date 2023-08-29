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
    <label for="name">Name</label>
    <input type="text" name="name" id="name"><br>
    <label for="price">Price</label>
    <input type="text" name="price" id="price" ><br>
    <label for="description">Description</label>
    <input type="text" name="description" id="description" ><br>
    <label for="company">Company</label>
    <input type="text" name="company" id="company" ><br>
    <button type="submit">Update Product</button>
</form>
</body>
</html>
