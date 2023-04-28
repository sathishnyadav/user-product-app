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
	<form method="post" action="edit">
		<input type="hidden" value="<%=user.getId()%>" name="id"> Name<input
			type="text" name="nm" value="<%=user.getName()%>"><br>

		Age<input type="number" name="age" value="<%=user.getAge()%>"><br>

		Phone<input type="tel" name="ph" value="<%=user.getPhone()%>"><br>

		Email<input type="email" name='em' value="<%=user.getEmail()%>"><br>

		Gender<input type="radio" name="gender" value="Male">Male <input
			type="radio" name="gender" value="FeMale">FeMale<br> <input
			type="password" name="ps" value="<%=user.getPassword()%>"><br>

		<input type="submit" value="Register">
	</form>
	<%
	} else {
	response.sendRedirect("login.jsp");
	}
	%>

</body>
</html>