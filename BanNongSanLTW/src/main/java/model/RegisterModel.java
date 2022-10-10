package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.User;
import jdbc.ConnectDB;

public class RegisterModel {

	public static boolean checkRegister(User user) {
		
		try {
			Connection connection = ConnectDB.getConnection();
			PreparedStatement ps = null;
			
			String sql = "INSERT INTO users (username,password,email,phone,name,created) values (?,?,?,?,?,?)"; 
            ps = connection.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getPhone());
            ps.setString(5, user.getName());
            ps.setString(6, user.getCreated());
            ps.executeUpdate();
            
            return true;
            
		} catch (Exception e) {
			e.printStackTrace();			
		}
		return false;
	}	
	
}
