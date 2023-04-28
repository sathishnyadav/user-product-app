<%@page import="org.jsp.userproductapp.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	User user = (User) session.getAttribute("user");
	if (user != null) {
	%>
	<h3>
		ID:<%=user.getId()%></h3>
	<h3>
		Name:<%=user.getName()%></h3>
	<h3>
		Age:<%=user.getAge()%></h3>
	<h3>
		Phone:<%=user.getPhone()%></h3>
	<h3>
		Gender:<%=user.getGender()%></h3>
	<h3>
		Email:<%=user.getEmail()%>
	</h3>
	<%
	} else {
	response.sendRedirect("login.jsp");
	}
	%>
</body>
</html>