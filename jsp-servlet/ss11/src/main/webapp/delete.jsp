<%--
  Created by IntelliJ IDEA.
  User: myhanh
  Date: 29/08/2023
  Time: 22:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/bootstrap-5.1.3-dist/css/bootstrap.css">
</head>
<body>
<a href="/product">Back to Product List</a>
<form method="post">
    <h3>Are you sure?</h3>
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
        </tr>p
        <tr>
            <td>Company:</td>
            <td>${p.getCompany()}</td>
        </tr>
        <td><input type="submit" value="Delete Product"></td>
        </tr>
    </table>
</form>
<script src="/bootstrap-5.1.3-dist/js/bootstrap.bundle.js"></script>

</body>
</html>
