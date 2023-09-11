<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 9/9/2023
  Time: 1:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/bootstrap-5.2.3-dist/css/bootstrap.css">
    <link rel="stylesheet" href="//cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
<a href="/BaiHocServlet?action=them" type="button" class="btn btn-primary">
    Thêm mới
</a>
<table id="example">
    <thead>
    <tr>
        <th scope="col">Tieu de</th>
        <th scope="col">Loai bai hoc</th>
        <th scope="col">Do kho</th>
        <th scope="col">Module</th>
        <th scope="col">Link</th>
        <th scope="col">Sua</th>
        <th scope="col">Xoa</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${danhsach}" var="danhSach">
        <tr>
            <td>${danhSach.getTieuDe()}</td>
            <td>${danhSach.getTenLoaiBaiHoc()}</td>

            <c:if test="${danhSach.doKho == 1}"><td>de</td></c:if>
            <c:if test="${danhSach.doKho == 2}"><td>trung binh</td></c:if>
            <c:if test="${danhSach.doKho == 3}"><td>kho</td></c:if>
            <td>${danhSach.getTen_module()}</td>
            <td>${danhSach.linkBaiHoc}</td>
            <td><a role="button" href="/BaiHocServlet?action=sua&id=${danhSach.maBaiHoc}">Sua</a></td>
            <td>
                <button onclick="showModal('${danhSach.getMaBaiHoc()}','${danhSach.getTieuDe()}')"
                        class="btn btn-danger" type="button" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    Xoa
                </button>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<!-- Button trigger modal -->


<!-- Modal -->
<form action="/BaiHocServlet?action=xoa" method="post" id="deleteForm">
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action=""></form>
                <div class="modal-header">
                    <h4 class="modal-title fs-5" id="exampleModalLabel">THÔNG BÁO</h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <input type="hidden" name="code" id="code">
                <div class="modal-body">
                    Bạn có muốn xóa bai hoc <b><span id="ten"></span></b> không?
                    <br>
                    <label>(Lưu ý: hành động này sẽ không được hoàn tác)</label>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                    <button type="submit" class="btn btn-primary">Xác nhận</button>
                </div>
            </div>
        </div>
    </div>
</form>
<script src="/bootstrap-5.2.3-dist/js/bootstrap.bundle.js"></script>
<script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
        crossorigin="anonymous"></script>
<!-- DATA TABLE -->
<script src="//cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script>
    new DataTable('#example');

    function showModal(code, name) {
        document.getElementById("ten").innerHTML = name;
        document.getElementById("code").value = code;
        $("#deleteModal").modal("show");
    }
</script>
</script>
</body>
</html>
