<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="buoi3.vn.iotstar.user"%>
	<%
	user u = (user) session.getAttribute("account");
	%>

	<div
		style="background-color: #f1f1f1; padding: 10px; border-bottom: 1px solid #ccc;">
		<div
			style="display: flex; justify-content: space-between; align-items: center;">
			<div>
				<a href="index.jsp"
					style="text-decoration: none; font-weight: bold;">Trang chủ</a>
			</div>
			<div>
				<%
				if (u == null) {
				%>
				<a href="login.jsp">Đăng nhập</a> | <a href="register.jsp">Đăng
					ký</a>
				<%
				} else {
				%>
				<span>Xin chào, <%=u.getFullName()%></span> | <a href="logout">Đăng
					xuất</a>
				<%
				}
				%>
			</div>
		</div>
	</div>


</body>
</html>