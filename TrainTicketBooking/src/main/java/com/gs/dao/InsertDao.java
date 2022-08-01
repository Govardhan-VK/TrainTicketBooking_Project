package com.gs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.gs.modal.Passenger;
import com.gs.modal.Travel;

public class InsertDao {

	private Connection con;
	private Statement st;
	private PreparedStatement pst;
	private ResultSet rs;

	public InsertDao(Connection con) {
		this.con = con;
	}

	public String insertIntoDB(ArrayList<Passenger> passengerList,Travel travel) throws Exception {
		String BookingId = null;
		int check = 0;
		
		pst = con.prepareStatement("insert into ttb_travel values(bookingid.nextval,?,?,?,?,?,?,?,?)");
		pst.setString(1, travel.getFrom());
		pst.setString(2, travel.getTo());
		pst.setString(3, travel.getBookDate());
		pst.setInt(4, passengerList.size());
		pst.setString(5, travel.getClasses());
		pst.setString(6, travel.getQuota());
		pst.setInt(7, (travel.getPrice()*passengerList.size()));
		pst.setString(8, travel.getEmail());
		int var = pst.executeUpdate();
		if(var > 0)
		{
			st = con.createStatement();
			rs = st.executeQuery("select bookingid from ttb_travel order by bookingid desc fetch first 1 rows only");
			if(rs.next())
			{
				BookingId = rs.getString("bookingid");
				for (Passenger p : passengerList) {
					pst = con.prepareStatement("insert into ttb_passengers values(?,?,?,?)");
					pst.setString(1, p.getName());
					pst.setString(2, p.getAge());
					pst.setString(3, p.getGender());
					pst.setString(4, BookingId);
					check = pst.executeUpdate();
				}
			}
		}
		return BookingId;

		

	}

}
