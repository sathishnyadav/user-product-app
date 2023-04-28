<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="reg" method="post">
		Name<input type="text" name="nm"><br> Age<input
			type="number" name="age"><br> 
			Gender<input type="radio" name="gender" value="Male" required="required">Male 
			<input type="radio" name="gender" value="Female" required="required">Female<br> 
			Email<input type="email" name="em"><br> 
			Phone<input type="tel" name="ph"><br> 
			Password<input type="password" name="ps"><br>
		<input type="submit" value="Register">
	</form>
</body>
</html>