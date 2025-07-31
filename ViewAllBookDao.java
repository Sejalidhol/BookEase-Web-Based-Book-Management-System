package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ViewAllBookDao {

	public ArrayList<BookBean> al=new ArrayList<BookBean>();
	public ArrayList<BookBean> retrieve()
	{
		try {
			Connection con=DBConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from book");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				BookBean pb=new BookBean();
				pb.setBid(rs.getString(1));
				pb.setBname(rs.getString(2));
				pb.setBauthor(rs.getString(3));
				pb.setBprice(rs.getFloat(4));
				pb.setBqty(rs.getInt(5));
				al.add(pb);//Bean added to ArrayList
			}//end of loop
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return al;
	}

}
