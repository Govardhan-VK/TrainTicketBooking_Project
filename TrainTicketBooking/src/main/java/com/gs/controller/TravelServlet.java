package com.gs.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gs.modal.Travel;
import com.gs.modal.User;

@WebServlet("/travel")
public class TravelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String from = request.getParameter("from");
		String to = request.getParameter("to");
		String bookDate = request.getParameter("bookdate");
		String classes = request.getParameter("class");
		String quota = request.getParameter("quota");
		int price = Integer.parseInt(request.getParameter("price"));

		HttpSession session = request.getSession();

		User user = (User) session.getAttribute("user");

		Travel travel = new Travel();
		travel.setFrom(from);
		travel.setTo(to);
		travel.setBookDate(bookDate);
		travel.setClasses(classes);
		travel.setQuota(quota);
		travel.setPrice(price);
		travel.setEmail(user.getEmail());

		session.setAttribute("Travel", travel);

		RequestDispatcher rd = request.getRequestDispatcher("PassengerDetails.jsp");
		rd.forward(request, response);

	}

}
