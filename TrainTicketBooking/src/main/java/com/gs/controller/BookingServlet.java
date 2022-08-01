package com.gs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gs.dao.DBUtil;
import com.gs.dao.InsertDao;
import com.gs.dao.ViewDao;
import com.gs.modal.Passenger;
import com.gs.modal.Travel;
import com.gs.modal.View;

@WebServlet("/book")
public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		PrintWriter out = response.getWriter();

		try {
			InsertDao idao = new InsertDao(DBUtil.getConnection());
			String bookingId = idao.insertIntoDB((ArrayList<Passenger>) session.getAttribute("passengerList"),(Travel) session.getAttribute("Travel"));
			if(bookingId!=null)
			{
				
				ViewDao vdao = new ViewDao(DBUtil.getConnection());
				ArrayList<View> ticket = vdao.viewTicket(bookingId);
				session.setAttribute("ticket", ticket);
				RequestDispatcher rd= request.getRequestDispatcher("viewticket.jsp");
				rd.forward(request, response);
				
				
			
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
