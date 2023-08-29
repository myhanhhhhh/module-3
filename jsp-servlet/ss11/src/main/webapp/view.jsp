<%--
  Created by IntelliJ IDEA.
  User: myhanh
  Date: 29/08/2023
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Product details</h1>
<p>
    <a href="/product">Back to Product List</a>
</p>
<table>
    <tr>
        <td>Name:</td>
        <td>${p.getName()}</td>
    </tr>
    <tr>
        <td>Price:</td>
        <td>${p.getPrice()}</td>
    </tr>
    <tr>
        <td>Description:</td>
        <td>${p.getDescription()}</td>
    </tr>
    <tr>
        <td>Company:</td>
        <td>${p.getCompany()}</td>
    </tr>

</table>

</body>
</html>
