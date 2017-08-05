import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class AdminVerify extends HttpServlet
{	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{	PrintWriter out=res.getWriter();
		String uname;
		String pass;
		try
		{	res.setContentType("text/html");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=null;
			con=DriverManager.getConnection("jdbc:mysql://localhost/asd","root","");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from admin");
			while(rs.next())
			{	uname=rs.getString("uname");
				pass=rs.getString("pass");
				if(req.getParameter("uname").equals(uname) && req.getParameter("pass").equals(pass))
				{	stmt=con.createStatement();
					int x=stmt.executeUpdate("update admin set status='yes'");
					req.getRequestDispatcher("/adminpage.jsp").include(req,res);
				}
				else
				{	req.setAttribute("mes","Invalid Username or Password");
					req.getRequestDispatcher("/index.jsp").include(req,res);
				}
			}
		}
		catch(Exception e)
		{	out.println(e);
		}
		out.close();
	}
}