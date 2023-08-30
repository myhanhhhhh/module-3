<%--
  Created by IntelliJ IDEA.
  User: myhanh
  Date: 30/08/2023
  Time: 21:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>

<center>
    <h1>User Management</h1>
    <h3>
        <a href="/user">List All Users</a>
    </h3>
</center>
<div align="center">
    <form action="user?action=search" method="post">
        <table border="1" cellpadding="3" style='border-collapse: collapse' cellPadding="10">
            <caption>
                <h3 style="text-align: center">Users Be Searched</h3>
            </caption>
            <tr>
                <th>Country:</th>
                <td>
                    <input type="text" name="country" id="country"  size="60"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>
    <table class="table table-hover" style="text-align: center">
        <thead>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="u">
            <tr>
                <td><c:out value="${u.name}"/></td>
                <td><c:out value="${u.email}"/></td>
                <td><c:out value="${u.country}"/></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
