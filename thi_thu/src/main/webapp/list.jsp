<%--
  Created by IntelliJ IDEA.
  User: mylie
  Date: 9/10/2023
  Time: 12:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Danh sách</title>
    <%--    Boostrap--%>
    <link rel="stylesheet" href="bootstrap-5.2.3-dist/css/bootstrap.min.css"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <%--    Phân trang--%>
    <link href="https://cdn.datatables.net/1.13.5/css/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css">
</head>
<body>
<div class="container">
    <h1 style="text-align: center">Danh Sách Bài Học</h1>
    <a href="/bai-hoc?action=add" class="btn btn-primary">
        Thêm mới
    </a>
    <table class="table table-striped" id="example">
        <thead>
        <tr>
            <th>STT</th>
            <th>Tiêu đề</th>
            <th>Module</th>
            <th>Level</th>
            <th>Link</th>
            <th>Tên loại</th>
            <th>Sửa</th>
            <th>Xóa</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="l" items="${showList}" varStatus="loop">
            <tr>
                <td>
                    <c:out value="${loop.count}"/>
                </td>
                <td>
                    <c:out value="${l.title}"/>
                </td>
                <td>
                    <c:out value="${l.link}"/>
                </td>
                <td>
                    <c:out value="${l.styleName}"/>
                </td>
                <td>
                    <a class="btn btn-primary" href="#">
                        Sửa
                    </a>
                </td>
                <td>
                    <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#exampleModal"
                            onclick="sendInforModal('${l.id}','${l.title}')">
                        Xóa
                    </button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="/bai-hoc?action=delete" method="post">
                <div class="modal-header" style="background-color: red">
                    <h5 class="modal-title" id="exampleModalLabel">Xóa bài học</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="id_delete" name="id_delete">
                    Chắc chắn xóa bài học <span id="name_delete"></span> không?<br>
                    (Lưu ý: Hành động này không thể hoàn tác!)
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                    <button type="submit" class="btn btn-danger">Xóa</button>
                </div>
            </form>
        </div>
    </div>
</div>


<script>

    function sendInforModal(id, name) {
        document.getElementById("id_delete").value = id;
        document.getElementById("name_delete").innerText = name;
    }
</script>

<%--    Boostrap--%>
<script src="bootstrap-5.2.3-dist/js/bootstrap.bundle.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
        crossorigin="anonymous"></script>
<%--phân trang--%>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
<script>
    new DataTable('#example');
</script>
</body>
</html>
