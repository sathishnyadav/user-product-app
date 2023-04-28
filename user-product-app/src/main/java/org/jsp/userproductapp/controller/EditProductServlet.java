package org.jsp.userproductapp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsp.userproductapp.dao.ProductDao;
import org.jsp.userproductapp.dto.Product;
import org.jsp.userproductapp.dto.User;

@WebServlet("/editproduct")
public class EditProductServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("nm");
		String brand = req.getParameter("br");
		String description = req.getParameter("desc");
		String category = req.getParameter("cat");
		String image = req.getParameter("im");
		double price = Double.parseDouble(req.getParameter("price"));
		Product p = new Product(name, description, category, brand, image, price);
		p.setId(id);
		ProductDao dao = new ProductDao();
		User u = (User) req.getSession().getAttribute("user");
		p = dao.updateProduct(p, u.getId());
		PrintWriter writer = resp.getWriter();
		writer.write("<html><body><h2>product added with ID:" + p.getId() + "</h2></body></html>");
	}
}
