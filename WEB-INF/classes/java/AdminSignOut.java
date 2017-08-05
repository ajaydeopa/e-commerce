import java.io.*;
import java.util.*;
import java.sql.*;
public class AdminSignOut
{	static public String func() throws IOException,SQLException
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
		Statement stmt=con.createStatement();
		int i=stmt.executeUpdate("update admin set status='no'");
		return "yes";
	}
}