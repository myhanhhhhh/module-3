<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 28/8/2023
  Time: 8:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table {
            border-collapse: collapse;
            width: 50%;
            text-align: center;
        }
        img {
            width: 100px;
            height: 100px;
        }
    </style>
</head>
<body>
<h1>Customer List</h1>
<table border="1px">
    <thead>
    <tr>
        <th>Name</th>
        <th>Date</th>
        <th>Address</th>
        <th>Image</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="c" items="${list}" varStatus="loop">
        <tr>
            <td><c:out value="${c.name}"/></td>
            <td><c:out value="${c.date}"/></td>
            <td><c:out value="${c.address}"/></td>
            <td><img src="${c.image}" alt="image"></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
