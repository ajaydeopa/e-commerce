import java.io.*;
import java.io.*;
import java.sql.*;
public class PayStatus
{	static public int status(String s1) throws IOException,SQLException
	{	try
		{	Class.forName("com.mysql.jdbc.Driver");
		}
		catch(Exception e)
		{	System.out.println("exception : "+e);
		}
		Connection con=null;
		try
		{	con=DriverManager.getConnection("jdbc:mysql://localhost/asd","root","1234");
		}
		catch(Exception e)
		{	System.out.println("exception : "+e);
		}
		String q="select payment from customer where cust_id=?";
		PreparedStatement ps=con.prepareStatement(q);
		ps.clearParameters();
		ps.setString(1,s1);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{	String pay="";
			pay=rs.getString("payment");
			if(pay.equals("yes"))
				return 0;
			return 2;
		}
		return 1;
	}
}