<%--
  Created by IntelliJ IDEA.
  User: myhanh
  Date: 31/08/2023
  Time: 09:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Đăng nhập</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          crossorigin="anonymous">
    <link rel="stylesheet" href="login.css">
</head>
<body>
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
    Đăng nhập
</button>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <button class="btn-close" type="button" class="btn-close" data-bs-dismiss="modal"
                        aria-label="Close"></button>
                <div class="modal-header">
                    <img class="logo-login" src="img/1.png" alt="">
                </div>
                <div id="loginContent">
                    <form action="">
                        <div class="form-outline mb-4">
                            <label class="form-label" for="loginName">Số điện thoại</label>
                            <input type="text" id="loginName" class="form-control"/>
                        </div>
                        <div class="form-outline mb-4">
                            <label class="form-label" for="loginPassword">Mật khẩu</label>
                            <input type="password" id="loginPassword" class="form-control"/>
                        </div>
<%--                        <div class="row mb-4">--%>
<%--                            <div class="col-md-6 d-flex">--%>
<%--                                <div class="form-check mb-3 mb-md-0">--%>
<%--                                    <input class="form-check-input" type="checkbox" value="" id="loginCheck" checked/>--%>
<%--                                    <label class="form-check-label" for="loginCheck"> Ghi nhớ tài khoản </label>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
                        <button type="submit" class="btn btn-primary btn-block mb-4" id="btn-log-in">Đăng nhập</button>
<%--                        <div class="text-center">--%>
<%--                            <p>Không phải thành viên?--%>
<%--                                <button type="button" id="switchToRegisterBtn">Đăng ký</button>--%>
<%--                            </p>--%>
<%--                        </div>--%>
                    </form>
                </div>
<%--                <div id="registerContent">--%>
<%--                    <form action="">--%>
<%--                        <!-- Username input -->--%>
<%--                        <div class="form-outline mb-4">--%>
<%--                            <label class="form-label" for="fullName">Họ và tên</label>--%>
<%--                            <input type="text" id="full-name" class="form-control"/>--%>
<%--                        </div>--%>
<%--                        <div class="form-outline mb-4">--%>
<%--                            <label class="form-label" for="email">Email</label>--%>
<%--                            <input type="email" id="email" class="form-control"/>--%>
<%--                        </div>--%>
<%--                        <div class="form-outline mb-4">--%>
<%--                            <label class="form-label" for="identityNumber">Số CCCD/CMND</label>--%>
<%--                            <input type="text" id="identity-number" class="form-control"/>--%>
<%--                        </div>--%>
<%--                        <div class="form-outline mb-4">--%>
<%--                            <label class="form-label" for="dateOfBirth">Ngày tháng năm sinh</label>--%>
<%--                            <input type="text" id="date-of-birth" class="form-control"/>--%>
<%--                        </div>--%>
<%--                        <div class="form-outline mb-4">--%>
<%--                            <label class="form-label" for="loginName">Giới tính</label>--%>
<%--                            <select name="gender" id="gender">--%>
<%--                                <option value="male">Nam</option>--%>
<%--                                <option value="female">Nữ</option>--%>
<%--                            </select>--%>
<%--                        </div>--%>
<%--                        <div class="form-outline mb-4">--%>
<%--                            <label class="form-label" for="address">Địa chỉ</label>--%>
<%--                            <input type="text" id="address" class="form-control"/>--%>
<%--                        </div>--%>
<%--                        <div class="form-outline mb-4">--%>
<%--                            <label class="form-label" for="phoneNumber">Số điện thoại</label>--%>
<%--                            <input type="text" id="phone-number" class="form-control"/>--%>
<%--                        </div>--%>
<%--                        <div class="form-outline mb-4">--%>
<%--                            <label class="form-label" for="loginPassword">Mật khẩu</label>--%>
<%--                            <input type="password" id="loginPassword" class="form-control"/>--%>
<%--                        </div>--%>
<%--                        <a href="#" type="submit" class="btn btn-primary btn-block mb-4" id="btn-log-in">Đăng ký</a>--%>
<%--                        <div class="text-center">--%>
<%--                            <p>Đã là thành viên?--%>
<%--                                <button type="button" id="switchToLoginBtn">Đăng nhập</button>--%>
<%--                            </p>--%>
<%--                        </div>--%>
<%--                    </form>--%>
<%--                </div>--%>
            </div>
        </div>
    </div>
</div>
<script>
    const loginContent = document.getElementById('loginContent');
    const registerContent = document.getElementById('registerContent');
    const switchToRegisterBtn = document.getElementById('switchToRegisterBtn');
    const switchToLoginBtn = document.getElementById('switchToLoginBtn');

    switchToRegisterBtn.addEventListener('click', () => {
        loginContent.style.display = 'none';
        registerContent.style.display = 'block';
    });

    switchToLoginBtn.addEventListener('click', () => {
        registerContent.style.display = 'none';
        loginContent.style.display = 'block';
    });
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
</body>
</html>
