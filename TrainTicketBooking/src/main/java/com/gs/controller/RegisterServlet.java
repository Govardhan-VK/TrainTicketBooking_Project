package com.gs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
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
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		
		try {
			UserDao ud = new UserDao(DBUtil.getConnection());
			boolean result = ud.registerUser(email, password);
			PrintWriter out = response.getWriter();
			if(result)
			{
				RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
				rd.forward(request, response);
				out.print("registration success");
			}
			else
			{
				RequestDispatcher rd = request.getRequestDispatcher("Register.jsp");
				rd.forward(request, response);
				out.print("registration failed");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
