package test;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UpdateBookDao 
{
	public static boolean updateBook(BookBean bb)
	{
		boolean updated = false;
		try {
			Connection con=DBConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("update book set bname=?, bauthor=?,bprice=?,bqty=? where bid=? ");
			ps.setString(1, bb.getBname());
            ps.setString(2, bb.getBauthor());
            ps.setFloat(3, bb.getBprice());
            ps.setInt(4, bb.getBqty());
            ps.setString(5, bb.getBid());
            
            int executeUpdate = ps.executeUpdate();
            if(executeUpdate>0)
            {
            	updated=true;
            }
		}
		catch(Exception e)
		{
			e.printStackTrace();;
		}
		return updated;
	 
		
	}

}