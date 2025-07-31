package test;

//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//
//public class LoginDao 
//{
//	AdminBean ab=null;
//	public AdminBean login(String uN, String pW)
//	{
//		try
//		{
//			Connection con=DBConnection.getConnection();
//			PreparedStatement ps=con.prepareStatement("select * from admin where aname=? and apass=?");
//			ps.setString(1, uN);
//			ps.setString(2, pW);
//			ResultSet rs=ps.executeQuery();
//			if(rs.next())
//			{
//				ab=new AdminBean();
//				ab.setAname(rs.getString(1));
//				ab.setApass(rs.getString(2));
//				ab.setAfname( rs.getString(3));
//				ab.setAlname(rs.getString(4));
//				ab.setAmid(rs.getString(5));
//				ab.setAphno(rs.getLong(6));
//			}
//		}
//		catch(Exception e)
//		{
//			e.printStackTrace();
//		}
//		return ab;
//		
//	}
//
//}

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao 
{
	AdminBean ab=null;
	public AdminBean login(String uN, String pW)
	{
		try
		{
			Connection con=DBConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from admin where aname=? and apass=?");
			ps.setString(1, uN);
			ps.setString(2, pW);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				ab=new AdminBean();
				ab.setAname(rs.getString(1));
				ab.setApass(rs.getString(2));
				ab.setAfname( rs.getString(3));
				ab.setAlname(rs.getString(4));
				ab.setAmid(rs.getString(5));
				ab.setAphno(rs.getLong(6));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ab;
		
	}

}