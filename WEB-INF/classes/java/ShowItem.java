import clicks.clicks.Display;
import java.io.*;
import java.util.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class ShowItem extends HttpServlet
{	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{	PrintWriter out=res.getWriter();
		ArrayList<String> l=new ArrayList<String>();
		Display d=new Display();
		String s;
		try
		{	res.setContentType("text/html");
			s=req.getParameter("sub");
			if(s.charAt(0)=='s')
			{	s=s.substring(16,s.length());
				req.setAttribute("h2","ORDER DETAIL");
			}
			else
			{	String str=req.getParameter("see");
				req.setAttribute("h2","YOUR ORDER!!");
				if(str.equals("Do payment!"))
					req.setAttribute("h2","VERIFY YOUR ORDER!");
			}
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=null;
			con=DriverManager.getConnection("jdbc:mysql://localhost/asd","root","1234");
			String q="select item,qty,cost from itemlist where cust_id=?";
			PreparedStatement ps=con.prepareStatement(q);
			ps.clearParameters();
			ps.setString(1,s);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{	l.add(rs.getString("item"));
				l.add(rs.getString("qty"));
				l.add(rs.getString("cost"));
			}
			int i=0;
			String item[]=new String[l.size()/3];
			String qty[]=new String[l.size()/3];
			String cost[]=new String[l.size()/3];
			while(i<l.size())
			{	item[i/3]=l.get(i++);
				qty[i/3]=l.get(i++);
				cost[i/3]=l.get(i++);
			}
			d.setItem(item);
			d.setQty(qty);
			d.setCost(cost);
			d.setCust(s);
			q="select tot_item,tot_cost,order_date,order_time from customer where cust_id=?";
			ps=con.prepareStatement(q);
			ps.clearParameters();
			ps.setString(1,s);
			rs=ps.executeQuery();
			while(rs.next())
			{	d.setTqty(rs.getString("tot_item"));
				d.setTot(rs.getString("tot_cost"));
				d.setDate(rs.getString("order_date"));
				d.setTime(rs.getString("order_time"));
			}
			req.setAttribute("obj",d);
			req.getRequestDispatcher("/showitem.jsp").include(req,res);
		}
		catch(Exception e)
		{	out.println(e);
		}
		out.close();
	}
}