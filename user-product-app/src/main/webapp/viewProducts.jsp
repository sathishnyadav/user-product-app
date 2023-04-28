<%@page import="org.jsp.userproductapp.dto.Product"%>
<%@page import="java.util.List"%>
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
		List<Product> products = (List<Product>) request.getAttribute("products");
	%>
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Desription</th>
			<th>Brand</th>
			<th>Category</th>
			<th>Image</th>
			<th>Price</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<%
		for (Product p : products) {
		%>
		<tr>
			<td><%=p.getId()%></td>
			<td><%=p.getName()%></td>
			<td><%=p.getDescription()%></td>
			<td><%=p.getBrand()%></td>
			<td><%=p.getCategory()%></td>
			<td><%=p.getImage()%></td>
			<td><%=p.getPrice()%></td>
			<td><a href="find?pid=<%=p.getId()%>">Edit</a></td>
			<td><a href="deleteproduct?pid=<%=p.getId()%>">Delete</a></td>
		</tr>
		<%
		}
		%>
	</table>
	<%
	} else {
	response.sendRedirect("login.jsp");
	}
	%>

</body>
</html>