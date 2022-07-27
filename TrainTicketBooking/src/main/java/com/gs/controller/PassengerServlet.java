package com.gs.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gs.modal.Passenger;

@WebServlet("/passenger")
public class PassengerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name[] = request.getParameterValues("name[]");
		String age[] = request.getParameterValues("age[]");
		String gender[] = request.getParameterValues("gender[]");

		ArrayList<Passenger> passengerList = new ArrayList<>();
		for (int i = 0; i < name.length; i++) {
			Passenger passenger = new Passenger();
			passenger.setName(name[i]);
			passenger.setAge(age[i]);
			passenger.setGender(gender[i]);

			passengerList.add(passenger);
		}

		HttpSession session = request.getSession();
		session.setAttribute("passengerList", passengerList);

		RequestDispatcher rd = request.getRequestDispatcher("PaymentForm.jsp");
		rd.forward(request, response);

	}

}
