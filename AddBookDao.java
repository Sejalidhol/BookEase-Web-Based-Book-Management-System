package test;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class AddBookDao 
{
	public int add(BookBean bb)
	{
		int k=0;
		try {
			Connection con=DBConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("insert into Book values(?,?,?,?,?)");
			ps.setString(1, bb.getBid());
			ps.setString(2, bb.getBname());
			ps.setString(3, bb.getBauthor());
			ps.setFloat(4, bb.getBprice());
			ps.setInt(5, bb.getBqty());
			
			k=ps.executeUpdate();
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return k;
	}

}