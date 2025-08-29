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

<jsp:include page="topbar.jsp" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
</head>
<body>
	<h2>
		Xin chào,
		<%=u.getFullName()%>!
	</h2>
	<p>Bạn đã đăng nhập thành công.</p>
</body>
</html>