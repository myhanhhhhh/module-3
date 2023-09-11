<%--
  Created by IntelliJ IDEA.
  User: NhanTri
  Date: 8/9/2023
  Time: 9:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List Management</title>
    <link rel="stylesheet" href="bootstrap-5.2.3-dist/css/bootstrap.min.css"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link href="https://cdn.datatables.net/1.13.5/css/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
</head>
<body>
<div class="container-fluid">
    <h1 align="center">List Bai Hoc</h1>
    <button onclick="window.location.href='/BaiHocServlet?hanhDong=them'" class="btn btn-primary">Thêm mới</button>

    <table id="example" class="table table-hover">
        <thead>
        <tr>
            <th>Tieu de</th>
            <th>Loai bai hoc</th>
            <th>Do kho</th>
            <th>Module</th>
            <th>Link</th>
            <th>Sua</th>
            <th>Xoa</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${danhSach}" var="danhSach">
            <tr>
                <td>${danhSach.getTieuDe()}</td>
                <td>${danhSach.getLoaiBaiHoc()}</td>
                <td>${danhSach.getDoKho()}</td>
                <td>${danhSach.getModule()}</td>
                <td>${danhSach.getLink()}</td>
                <td><a role="button" href="/BaiHocServlet?hanhDong=sua">Sua</a></td>
                <td class="data-list">
                    <button type="button"
                            onclick="showModal('${danhSach.getIdBaiHoc()}','${danhSach.getTieuDe()}')"
                            class="btn btn-danger">
                        Xoa
                    </button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <form action="/BaiHocServlet?hanhDong=xoa" method="post" id="deleteForm">
        <div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">THÔNG BÁO</h5>
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
                        <button id="deleteButton" type="submit" class="btn btn-danger">Xác nhận</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
</body>
<script src="bootstrap-5.2.3-dist/js/bootstrap.bundle.js"></script>
<script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
        crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.13.5/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.5/js/dataTables.bootstrap5.min.js"></script>
<script>
    new DataTable('#example');

    function showModal(code,name) {
        document.getElementById("ten").innerHTML = name;
        document.getElementById("code").value = code;
        $("#deleteModal").modal("show");
    }
    // const deleteButton = document.querySelector("#deleteButton");
    // const deleteForm = document.querySelector("#deleteForm");
    // const modal = document.getElementById("deleteModal");
    // deleteButton.addEventListener("click", function (event) {
    //     event.preventDefault();
    //     Swal.fire({
    //         title: 'Xoá thành công',
    //         text: 'Dữ liệu đã được xoá thành công!',
    //         icon: 'success',
    //         showConfirmButton: true
    //     }).then((result) => {
    //         if (result.isConfirmed) {
    //             // Nếu người dùng xác nhận, thực hiện submit form
    //             deleteForm.submit();
    //             modal.style.display ="none";
    //         }
    //     });
    // });
</script>
</html>
