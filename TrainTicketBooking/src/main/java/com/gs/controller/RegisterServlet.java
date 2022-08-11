package com.gs.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gs.dao.DBUtil;
import com.gs.dao.UserDao;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		try {
			UserDao ud = new UserDao(DBUtil.getConnection());
			boolean result = ud.registerUser(email, password);
			PrintWriter out = response.getWriter();
			if (result) {
				out.println(
						"<h1 style='color: green;'>Registration Successful</h1><a href='index.jsp'>Go To HomePage</a>");
			} else {
				out.println("<h1 style='color: red;'>Registration Failed</h1><a href='index.jsp'>Please try again</a>");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
