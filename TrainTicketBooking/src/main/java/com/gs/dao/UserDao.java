package com.gs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.gs.modal.User;

public class UserDao {

	private Connection con;
	private Statement st;
	private PreparedStatement pst;
	private ResultSet rs;

	public UserDao(Connection con) {
		this.con = con;
	}

	public User getUser(String email, String password) throws Exception {
		User user = null;

		pst = con.prepareStatement("select * from c##izuku.TTB_USERS where email=? and password=?");
		pst.setString(1, email);
		pst.setString(2, password);
		rs = pst.executeQuery();

		if (rs.next()) {
			user = new User();
			user.setEmail(rs.getString("email"));
			user.setPassword(rs.getString("password"));
		}
		return user;
	}
	
	public boolean registerUser(String email,String password) throws Exception
	{
		pst = con.prepareStatement("insert into c##izuku.TTB_USERS values(?,?)");
		pst.setString(1, email);
		pst.setString(2, password);
		int num = pst.executeUpdate();
		if(num>0)
			return true;
		else
			return false;
		
		
	}

}
