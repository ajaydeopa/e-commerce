import java.io.*;
import java.util.*;
import java.sql.*;
public class ShowData1
{	static public ArrayList showData(String s1,String s2) throws IOException,SQLException
	{	ArrayList<String> l=new ArrayList<String>();
		try
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
		Statement stmt=con.createStatement();
		String q="select * from customer where order_date>'"+s1+"' || (order_date='"+s1+"' && order_time>='"+s2+"')";
		ResultSet rs=stmt.executeQuery(q);
		while(rs.next())
		{	l.add(rs.getString("cust_id"));
			l.add(rs.getString("tot_item"));
			l.add(rs.getString("tot_cost"));
			l.add(rs.getString("order_date"));
			l.add(rs.getString("order_time"));
			l.add(rs.getString("payment"));
		}
		return l;
	}
}