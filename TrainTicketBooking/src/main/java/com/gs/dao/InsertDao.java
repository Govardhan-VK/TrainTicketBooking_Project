package com.gs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.gs.modal.Passenger;

public class InsertDao {

	private Connection con;
	private Statement st;
	private PreparedStatement pst;
	private ResultSet rs;

	public InsertDao(Connection con) {
		this.con = con;
	}

	public void insertIntoDB(ArrayList<Passenger> passengerList) throws Exception {
		String BookingId = null;

		for (Passenger p : passengerList) {
			pst = con.prepareStatement("insert into ttb_passengers values(?,?,?,?)");
			pst.setString(1, p.getName());
			pst.setString(2, p.getAge());
			pst.setString(3, p.getGender());
			pst.setString(4, BookingId);
			pst.executeUpdate();
		}

	}

}
