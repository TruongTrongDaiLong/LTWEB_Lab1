package vn.iotstar.configs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnectMySQL {
	private static String USERNAME = "root";
	private static String PASSWORD = "123456";
	private static String DRIVER = "com.mysql.cj.jdbc.Driver";
	private static String URL = "jdbc:mysql://localhost:3306/login_register";

	public static Connection getDatabaseConnection() throws SQLException, Exception{
		try {
			Class.forName(DRIVER);
			return DriverManager.getConnection(URL, USERNAME, PASSWORD);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public static Connection getConn() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/login_register?useSSL=false&Unicode=true&characterEncoding=UTF-8", "root", "123456");
			return conn;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
	//test kết nối
	public static void main(String[] args) {
		try {
			new DBConnectMySQL();
			System.out.println(DBConnectMySQL.getDatabaseConnection());
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
