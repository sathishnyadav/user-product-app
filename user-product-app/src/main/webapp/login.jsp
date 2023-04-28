<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
form {
	align-items: center;
	align-content: center;
	align-self: center;
}
</style>
</head>
<body>
	<%
	String msg = (String) request.getAttribute("msg");
	if (msg != null) {
	%>
	<h2><%=msg%></h2>
	<%
	}
	%>
	<h2></h2>
	<form action="login" method="post">
		<input type="tel" name="ph" placeholder="Enter your Phone Number"><br>
		<input type="text" name="ps" placeholder="Enter your Password"><br>
		<input type="submit" value="LOGIN">
	</form>
	<h2>
		<a href="register.jsp">Click Here to Register</a>
	</h2>
</body>
</html>