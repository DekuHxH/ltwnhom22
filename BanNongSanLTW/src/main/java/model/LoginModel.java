package model;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.User;
import jdbc.ConnectDB;

public class LoginModel {
	
	public static User checkLogin(String username, String password) {
				
		try {
			Connection connection = ConnectDB.getConnection();
			PreparedStatement ps = null;
			ResultSet rs = null;
			User user =new User();
			String query = "select * from users where username = ? AND password = ?";
			
			ps = connection.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
			rs = ps.executeQuery();
			if(rs.next()) {
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				user.setPhone(rs.getString("phone"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setCreated(rs.getString("created"));
				return user;
			}		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;		
	}	
}
