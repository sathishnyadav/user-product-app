package org.jsp.userproductapp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsp.userproductapp.dao.UserDao;
import org.jsp.userproductapp.dto.User;

@WebServlet("/reg")
public class RegisterServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		long phone = Long.parseLong(req.getParameter("ph"));
		String password = req.getParameter("ps");
		String gender = req.getParameter("gender");
		String email = req.getParameter("em");
		int age = Integer.parseInt(req.getParameter("age"));
		String name = req.getParameter("nm");
		User u = new User(name, gender, password, email, phone, age);
		UserDao dao = new UserDao();
		u = dao.saveUser(u);
		PrintWriter writer = resp.getWriter();
		writer.write("<html><body><h2>user registered with ID:" + u.getId() + "</h2></body></html>");
	}
}
