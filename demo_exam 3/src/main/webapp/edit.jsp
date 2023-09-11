<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 9/10/2023
  Time: 11:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<h2 align="center">Sửa bài học</h2>

<c:if test="${message != null} ">
    <span id="message">${message}</span>
</c:if>
<form method="post" action="/BaiHocServlet?action=sua&id=${baiHoc.maBaiHoc}" style="text-align: center;display: flex;justify-content: center">
    <table border="1" cellpadding="5">
        <tr>
            <th>Tiêu đề :</th>
            <td>
                <input type="text" name="tieuDe" id="name" value="${baiHoc.tieuDe}"/>
            </td>
        </tr>
        <tr>
            <th>Loại bài học :</th>
            <td>
                <select name="maLoaiBaiHoc" class="form-control"
                        style="margin-bottom: 15px;" required>
                    <c:forEach var="loaiBaiHoc" items="${loaiBaiHoc}">
                        <option value="${loaiBaiHoc.getMaLoaiBaiHoc()}"
                                <c:if test="${loaiBaiHoc.getMaLoaiBaiHoc() == loaiBaiHoc.getMaLoaiBaiHoc()}">selected</c:if>>
                                ${loaiBaiHoc.getTenLoaiBaiHoc()}
                        </option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <th>Loại độ khó :</th>
            <td>
                <select id="doKho" name="doKho" class="form-control" required
                        style="margin-bottom: 15px;">
                    <option value="1" <c:if test="${baiHoc.doKho == 1}">selected</c:if>>de</option>
                    <option value="2" <c:if test="${baiHoc.doKho == 2}">selected</c:if>>trung binh</option>
                    <option value="3" <c:if test="${baiHoc.doKho == 3}">selected</c:if>>kho</option>
                </select>
            </td>
        </tr>
        <tr>
            <th>Loại module :</th>
            <td>
                <select id="tenModule" name="tenModule" class="form-control" required
                        style="margin-bottom: 15px;">
                    <option value="1" <c:if test="${baiHoc.ten_module == 1}">selected</c:if>>level 1</option>
                    <option value="2" <c:if test="${baiHoc.ten_module == 2}">selected</c:if>>level 2</option>
                    <option value="3" <c:if test="${baiHoc.ten_module == 3}">selected</c:if>>level 3</option>
                </select>
            </td>
        </tr>
        <tr>
            <th>Link bài học :</th>
            <td>
                <input type="text" name="linkBaiHoc" id="link" value="${baiHoc.linkBaiHoc}"/>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="Luu"/>
            </td>
            <td colspan="2" align="center">
                <a type="submit" href="/BaiHocServlet">Tro ve</a>
            </td>
        </tr>
    </table>
</form>

</body>
</html>
