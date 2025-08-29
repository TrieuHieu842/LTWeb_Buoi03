<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tạo tài khoản mới</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<style>
body {
	background-color: #f9f9f9;
	font-family: Arial, sans-serif;
}

.register-container {
	max-width: 400px;
	margin: 60px auto;
	background: #fff;
	padding: 30px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.register-container h2 {
	text-align: center;
	margin-bottom: 20px;
	color: #555;
}

.input-group-text {
	background: #f0f0f0;
}

.btn-register {
	width: 100%;
	background-color: #28a745;
	color: #fff;
}

.btn-register:hover {
	background-color: #218838;
}
</style>
</head>
<body>

	<div class="register-container">
		<h2>Tạo tài khoản mới</h2>

		<c:if test="${alert != null}">
			<div class="alert alert-danger">${alert}</div>
		</c:if>

		<form action="register" method="post">
			<div class="form-group">
				<label for="username">Tài khoản</label>
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"><i class="fa fa-user"></i></span>
					</div>
					<input type="text" id="username" name="username"
						class="form-control" placeholder="Nhập tài khoản" required>
				</div>
			</div>
			<div class="form-group">
				<label for="fullname">Họ tên</label>
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"><i class="fa fa-id-card"></i></span>
					</div>
					<input type="text" id="fullname" name="fullname"
						class="form-control" placeholder="Nhập họ tên đầy đủ">
				</div>
			</div>
			<div class="form-group">
				<label for="fullname">Email</label>
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"><i class="fa fa-id-card"></i></span>
					</div>
					<input type="text" id="email" name="email" class="form-control"
						placeholder="Nhập email">
				</div>
			</div>
			<div class="form-group">
				<label for="fullname">Số điện thoại</label>
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"><i class="fa fa-id-card"></i></span>
					</div>
					<input type="text" id="phone" name="phone" class="form-control"
						placeholder="Nhập số điện thoại">
				</div>
			</div>
			<div class="form-group">
				<label for="password">Mật khẩu</label>
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"><i class="fa fa-lock"></i></span>
					</div>
					<input type="password" id="password" name="password"
						class="form-control" placeholder="Nhập mật khẩu" required>
				</div>
			</div>

			<div class="form-group">
				<label for="confirmPassword">Xác nhận mật khẩu</label>
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"><i class="fa fa-lock"></i></span>
					</div>
					<input type="password" id="confirmPassword" name="confirmPassword"
						class="form-control" placeholder="Nhập lại mật khẩu" required>
				</div>
			</div>

			<button type="submit" class="btn btn-register mt-3">Đăng ký</button>
			<c:if test="${not empty sessionScope.successMsg}">
				<script>
					alert("${sessionScope.successMsg}");
				</script>
				<c:remove var="successMsg" scope="session" />
			</c:if>
		</form>
	</div>

</body>
</html>
