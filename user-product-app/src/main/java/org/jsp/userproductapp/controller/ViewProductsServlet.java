package org.jsp.userproductapp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsp.userproductapp.dao.ProductDao;
import org.jsp.userproductapp.dto.Product;
import org.jsp.userproductapp.dto.User;

@WebServlet("/viewproducts")
public class ViewProductsServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User u = (User) req.getSession().getAttribute("user");
		ProductDao dao = new ProductDao();
		List<Product> products = dao.findProductsByUserId(u.getId());
		req.setAttribute("products", products);
		RequestDispatcher dispatcher = req.getRequestDispatcher("viewProducts.jsp");
		dispatcher.forward(req, resp);
	}
}
