package com.gs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.gs.modal.View;

public class ViewDao {
	private Connection con;
	private Statement st;
	private PreparedStatement pst;
	private ResultSet rs;
	
	public ViewDao(Connection con) {
		this.con = con;
	}
	
	public ArrayList<View> viewTicket(String bookingId) throws Exception
	{
		ArrayList<View> ticket = new ArrayList<>();
	 pst = con.prepareStatement("select * from ttb_travel inner join ttb_passengers on ttb_travel.bookingid = ttb_passengers.booking_id where ttb_travel.bookingid=?");
	 pst.setString(1, bookingId);
	 rs = pst.executeQuery();
	 while(rs.next())
	 {
		 View vw = new View();
		 vw.setBookingId(rs.getString("bookingid"));
		 vw.setDeparture(rs.getString("departure"));
		 vw.setDestination(rs.getString("destination"));
		 vw.setDate(rs.getString("date_of_departure"));
		 vw.setPassengers(rs.getInt("no_of_passengers"));
		 vw.setClasses(rs.getString("class"));
		 vw.setBerth(rs.getString("berth"));
		 vw.setPrice(rs.getInt("price"));
		 vw.setEmail(rs.getString("email"));
		 vw.setPname(rs.getString("pname"));
		 vw.setAge(rs.getString("age"));
		 vw.setGender(rs.getString("gender"));
		 
		 ticket.add(vw);
		 }
	 return ticket;
	}

}
