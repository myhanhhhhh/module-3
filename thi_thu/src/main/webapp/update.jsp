<%--
  Created by IntelliJ IDEA.
  User: myhanh
  Date: 11/09/2023
  Time: 08:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Thêm</title>
  <%--    Boostrap--%>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body>
<div class="container">
  <div class="row">
    <div class="col-lg-12">
      <div class="card">
        <div class="card-header">
          <strong>Thêm bài học</strong>
        </div>
        <div class="card-body card-block">

          <form action="/bai-hoc?action=update" method="post" name="form-2" id="form-2"
                class="form-horizontal">
            <div class="row form-group">
              <div class="col col-md-3">
                <label for="title" class="col-form-label">Tiêu đề</label>
              </div>
              <div class="col-12 col-md-9">
                <input type="text" id="title" name="title"
                       class="form-control"
                       aria-describedby="passwordHelpInline"
                       style="text-transform:capitalize">
              </div>
            </div>
            <div class="row form-group">
              <div class="col col-md-3">
                <label for="link" class="col-form-label">Link</label>
              </div>
              <div class="col-12 col-md-9">
                <input type="text" id="link" name="link" class="form-control"
                       aria-describedby="passwordHelpInline"
                       style="text-transform:capitalize">
                <span class="form-message text-warning"></span>
              </div>
            </div>
            <div class="row form-group">
              <div class="col col-md-3">
                <label for="loaiBaiHocList" class="col-form-label">Loại bài học</label>
              </div>
              <div class="col-12 col-md-9">
                <select type="text" id="loaiBaiHocList" name="loaiBaiHocList" class="form-control"
                        aria-describedby="passwordHelpInline"
                        style="text-transform:capitalize">
                  <c:forEach var="l" items="${loaiBaiHocList}">
                    <option value="${l.id}"> ${l.styleName}</option>
                  </c:forEach>
                  </option>
                </select>
                <span class="form-message text-warning"></span>
              </div>
            </div>

            <div class="card-footer">
              <button class="btn btn-primary" type="submit">
                Xác nhận
              </button>
              <a href="/bai-hoc" class="btn btn-dark">Đóng</a>
            </div>
          </form>
        </div>
        <div class="row form-group">
          <c:if test="${thongBao != null}">
            <div class="alert alert-primary" role="alert">
                ${thongBao}
            </div>
          </c:if>
        </div>

      </div>
    </div>
  </div>
</div>
<%--    Boostrap--%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
        crossorigin="anonymous"></script>
</body>
</html>
