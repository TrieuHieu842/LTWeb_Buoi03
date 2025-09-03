<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Quên mật khẩu</title>
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="card p-4 shadow-sm">
                <h4 class="text-center mb-3">🔑 Quên mật khẩu</h4>

                <!-- Hiện thông báo lỗi (chỉ khi có) -->
                <c:if test="${not empty alert}">
                    <div class="alert alert-danger" role="alert">
                        ${alert}
                    </div>
                </c:if>

                <!-- Hiện thông báo thành công (chỉ khi có) -->
                <c:if test="${not empty successMsg}">
                    <div class="alert alert-success" role="alert">
                        ${successMsg}
                    </div>
                </c:if>

                <!-- Form nhập email -->
                <form action="forgotPassword" method="post">
                    <div class="form-group">
                        <label for="email">Nhập email đã đăng ký</label>
                        <input type="email" class="form-control" id="email" name="email"
                               placeholder="example@email.com" required>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Gửi yêu cầu</button>
                </form>

                <!-- Quay lại đăng nhập -->
                <div class="text-center mt-3">
                    <a href="login.jsp">⬅ Quay lại đăng nhập</a>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
