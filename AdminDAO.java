package test;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class AdminDAO 
{
	public int register(AdminBean ab)
	{
		int k=0;
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("insert into admin values(?,?,?,?,?,?)");
			ps.setString(1, ab.getAname());
			ps.setString(2,ab.getApass() );
			ps.setString(3, ab.getAfname());
			ps.setString(4, ab.getAlname());
			ps.setString(5, ab.getAmid());
			ps.setLong(6, ab.getAphno());
			
			 k=ps.executeUpdate();
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return k;
		
	}

	
}