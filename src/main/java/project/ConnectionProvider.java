package project;
import java.sql.*;
public class ConnectionProvider {

	public static Connection getCon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3307/eCommerce","root","mysql");
			return cn;
		}
		catch(Exception ex)
		{
			System.out.println(ex);
			return null;
		}
	}
	
}
