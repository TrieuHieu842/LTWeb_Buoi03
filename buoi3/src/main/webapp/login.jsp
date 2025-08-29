<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
<style>
body {
	font-family: Arial, sans-serif;
	background: #f9f9f9;
	margin: 0;
	padding: 0;
}

.login-container {
	width: 360px;
	margin: 80px auto;
	padding: 30px;
	background: #fff;
	border: 1px solid #e0e0e0;
	border-radius: 8px;
	box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
	text-align: center;
}

.login-container h2 {
	margin-bottom: 20px;
	color: #666;
	font-weight: normal;
}

.input-group {
	position: relative;
	margin-bottom: 15px;
}

.input-group input {
	width: 80%;
	padding: 10px 35px 10px 35px;
	border: 1px solid #ccc;
	border-radius: 4px;
	font-size: 14px;
}

.input-group i {
	position: absolute;
	top: 50%;
	left: 10px;
	transform: translateY(-50%);
	color: #aaa;
}

.options {
	display: flex;
	justify-content: space-between;
	align-items: center;
	font-size: 13px;
	margin-bottom: 15px;
}

.login-btn {
	width: 100%;
	background: #0099ff;
	color: #fff;
	border: none;
	padding: 10px;
	font-size: 15px;
	border-radius: 4px;
	cursor: pointer;
}

.login-btn:hover {
	background: #007acc;
}

.register-link {
	margin-top: 15px;
	font-size: 13px;
}

.register-link a {
	color: #007bff;
	text-decoration: none;
}

.register-link a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
	
	<form class="login-container"
		action="${pageContext.request.contextPath}/login" method="post">
		<h2>Đăng Nhập Vào Hệ Thống</h2>
		<c:if test="${not empty alert}">
			<div style="color: red; margin-bottom: 10px;">${alert}</div>
		</c:if>


		<div class="input-group">
			<i class="fa fa-user"></i> <input type="text" name="username"
				placeholder="Tên đăng nhập" required>
		</div>

		<div class="input-group">
			<i class="fa fa-lock"></i> <input type="password" name="password"
				placeholder="Mật khẩu" required>
		</div>

		<div class="options">
			<label><input type="checkbox" name="remember"> Nhớ
				tôi</label> <a href="#">Quên mật khẩu?</a>
		</div>

		<button class="login-btn" type="submit">Đăng nhập</button>

		<div class="register-link">
			Nếu bạn chưa có tài khoản, hãy <a href="register.jsp">Đăng ký</a>
		</div>
	</form>

	<!-- Thêm link font-awesome nếu dùng icon -->
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</body>
</html>
