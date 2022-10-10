package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectDB {
	
	//Tạo connection với mySQL
	public static Connection getConnection() {
		String DB_URL = "jdbc:mysql://localhost:3306/qlns";
		String USER_NAME = "root";
		String PASSWORD = "123456";
		
		Connection connection = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
			System.out.println("Kết nối thành công!");
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println("Kết nối thất bại! " + e.getMessage());
		}
		return connection;
	}

	// Hàm main để test kết nối trên console
	public static void main(String[] args) {
		System.out.println(getConnection());
	}
}