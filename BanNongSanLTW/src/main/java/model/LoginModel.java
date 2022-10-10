package model;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.User;
import jdbc.ConnectDB;

public class LoginModel {
	
	public static boolean checkLogin(String username, String password) {
				
		try {
			Connection connection = ConnectDB.getConnection();
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			String query = "select username, password from users where username = ? AND password = ?";
			
			ps = connection.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				return true;
			}		
		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
		
	}	
}
