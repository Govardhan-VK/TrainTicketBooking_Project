package com.gs.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gs.dao.DBUtil;
import com.gs.dao.InsertDao;
import com.gs.modal.Passenger;

@WebServlet("/book")
public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		try {
			InsertDao idao = new InsertDao(DBUtil.getConnection());
			idao.insertIntoDB((ArrayList<Passenger>) session.getAttribute("passengerList"));
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
