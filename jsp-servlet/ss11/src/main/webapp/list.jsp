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
</head>
<body>
<a href="/product?action=showformcreate">Add product</a><br><br>
<table border="1px" style="width: 50%; text-align: center">
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
