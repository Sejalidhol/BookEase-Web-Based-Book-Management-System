package test;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection 
{
	private static Connection con=null;
	private DBConnection() {
		
	}
	static
	{
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			 con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","darshana");
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public static Connection getConnection()
	{
		return con;
	}

}