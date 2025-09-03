<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="buoi3.vn.iotstar.user"%>

<%
user u = (user) session.getAttribute("account");
if (u == null) {
	response.sendRedirect("login.jsp");
	return;
}
%>

<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<style>
body {
	background-color: #f4f6f9;
	font-family: Arial, sans-serif;
}

.navbar {
	background: #343a40;
}

.navbar-brand, .nav-link, .navbar-text {
	color: #fff !important;
}

.card {
	border-radius: 12px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
}

.welcome {
	font-weight: bold;
	color: #333;
}
</style>
</head>
<body>

	<!-- Thanh điều hướng -->
	<nav class="navbar navbar-expand-lg">
		<a class="navbar-brand" href="#"> <i class="fas fa-home"></i>
			Trang chủ
		</a>
		<div class="ml-auto">
			<span class="navbar-text mr-3"> Xin chào, <b><%=u.getFullName()%></b>
			</span> <a href="logout" class="btn btn-danger btn-sm"
				onclick="return confirm('Bạn có chắc chắn muốn đăng xuất không?');">
				<i class="fas fa-sign-out-alt"></i> Đăng xuất
			</a>
		</div>
	</nav>

	<!-- Nội dung chính -->
	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card p-4 text-center">
					<h3 class="welcome mb-3">
						👋 Chào mừng
						<%=u.getFullName()%>
						đã đăng nhập thành công!
					</h3>
					<p class="text-muted">Đây là trang chủ của hệ thống. Bạn có thể
						bắt đầu sử dụng các chức năng tại đây.</p>
					<hr>
					<div class="d-flex justify-content-around mt-3">
						<a href="profile.jsp" class="btn btn-primary"> <i
							class="fas fa-user"></i> Hồ sơ cá nhân
						</a> <a href="dashboard.jsp" class="btn btn-success"> <i
							class="fas fa-chart-line"></i> Bảng điều khiển
						</a> <a href="settings.jsp" class="btn btn-warning"> <i
							class="fas fa-cog"></i> Cài đặt
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
