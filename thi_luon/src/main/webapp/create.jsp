<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: NhanTri
  Date: 8/8/2023
  Time: 1:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link href="https://cdn.datatables.net/1.13.5/css/dataTables.bootstrap5.min.css">
    <style>
        #message{
            color: green;
        }
    </style>
</head>
<body>
<%--<div class="container">--%>
    <h2 align="center">ADD STUDENT</h2>


    <c:if test="${message != null} ">
        <span id="message">${message}</span>
    </c:if>
    <form method="post" action="/BaiHocServlet?hanhDong=them">
        <table class="table table-bordered border-primary" style="text-align: center">
            <tr>
                <th>Tieu de:</th>
                <td><input name="tieuDe" required></td>
            </tr>
            <tr>
                <td>
                <select id="loaiBaiHoc" name="loaiBaiHoc" class="form-control" required
                        style="margin-bottom: 15px;">
                    </option>
                    <c:forEach var="loaiBaiHoc" items="${loaiBaiHoc}">
                        <option value="${loaiBaiHoc.getIdLoaiBaiHoc()}"
                                <c:if test="${loaiBaiHoc.getIdLoaiBaiHoc() == loaiBaiHoc.getIdLoaiBaiHoc()}">selected</c:if>
                        >${loaiBaiHoc.getTenLoaiBaiHoc()}</option>
                    </c:forEach>
                </select>
                </td>
            </tr>
            <tr>
                <td>
                <select id="loaiDoKho" name="loaiDoKho" class="form-control" required
                        style="margin-bottom: 15px;">
                    </option>
                    <c:forEach var="loaiDoKho" items="${loaiDoKho}">
                        <option value="${loaiDoKho.getIdDoKho()}"
                                <c:if test="${loaiDoKho.getIdDoKho() == loaiDoKho.getIdDoKho()}">selected</c:if>
                        >${loaiDoKho.getTenDoKho()}</option>
                    </c:forEach>
                </select>
                </td>
            </tr>
            <tr>
                <td>
                <select id="loaiModule" name="loaiModule" class="form-control" required
                        style="margin-bottom: 15px;">
                    </option>
                    <c:forEach var="loaiModule" items="${loaiModule}">
                        <option value="${loaiModule.getLoaiModule()}"
                                <c:if test="${loaiModule.getLoaiModule() == loaiModule.getLoaiModule()}">selected</c:if>
                        >${loaiModule.getTenModule()}</option>
                    </c:forEach>
                </select>
                </td>
            </tr>
            <tr>
                <th> link:</th>
                <td><input name="link" required></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <button type="submit">Create</button>
                </td>
                <td colspan="2" align="center">
                    <a role="button" href="/BaiHocServlet"> quay lai</a>
                </td>
            </tr>
        </table>
    </form>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
        crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.13.5/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.5/js/dataTables.bootstrap5.min.js"></script>
<script>
    new DataTable('#example');

    function showModal(code) {
        document.getElementById("idDelete").innerText = code;
        document.getElementById("code").value = code;
        $("#deleteModal").modal("show");
    }
</script>
</html>
