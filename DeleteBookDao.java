package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
/*
public class DeleteBookDao 
{
	public int delete(BookBean bb)
	{
		int k=0;
		try
		{
			Connection con=DBConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("DELETE FROM BOOK WHERE BID = ?");
			ps.setString(1, bb.getBid());
			k = ps.executeUpdate();
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return k;
		
	}

}
*/

public class DeleteBookDao {
    public int delete(BookBean bb) {
        int deletedRows = 0;
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement("DELETE FROM book WHERE bid = ?")) {

            System.out.println("Received in DAO, Book ID: " + bb.getBid()); // Debugging
            ps.setString(1, bb.getBid());

            deletedRows = ps.executeUpdate();
            System.out.println("Deleted Rows: " + deletedRows); // Debugging

        } catch (Exception e) {
            e.printStackTrace();
        }
        return deletedRows;
    }
}