import clicks.clicks.Display;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class StoreData extends HttpServlet
{	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{	PrintWriter out=res.getWriter();
		try
		{	HttpSession ses=req.getSession(true);
			Display dis=(Display)ses.getAttribute("user");
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
			String ch=req.getParameter("submit");
			String q="select payment from customer where cust_id=?";
			PreparedStatement ps=con.prepareStatement(q);
			ps.clearParameters();
			ps.setString(1,dis.getCust());
			ResultSet rs=ps.executeQuery();
			//customer present in db
			if(rs.next())
			{	if(rs.getString("payment").equals("yes"))
					req.setAttribute("payinfo","Your payment has already being made !!");
				else
				{	if(ch.equals("Submit"))
					{	q="update customer set payment='yes' where cust_id=?";
						ps=con.prepareStatement(q);
						ps.clearParameters();
						ps.setString(1,dis.getCust());
						int i=ps.executeUpdate();
						req.setAttribute("payinfo","Your order has being made and will be delivered to</br>you in few days !!");
					}
					else
						req.setAttribute("payinfo","Your Cutomer ID is : "+dis.getCust()+"</br></br>You can pay for your order anytime later !!");
				}
			}
			//customer not present
			else
			{	//add customer to db
				q="insert into customer values(?,?,?,?,?,?)";
				ps=con.prepareStatement(q);
				ps.clearParameters();
				ps.setString(1,dis.getCust());
				ps.setString(2,dis.getTqty());
				ps.setString(3,dis.getTot());
				ps.setString(4,dis.getDate());
				ps.setString(5,dis.getTime());
				if(ch.equals("Submit"))
				{	ps.setString(6,"yes");
					req.setAttribute("payinfo","Your order has being made and will be delivered to</br>you in few days !!");
				}
				else
				{	ps.setString(6,"no");
					req.setAttribute("payinfo","Your Cutomer ID is : "+dis.getCust()+"</br></br>You can pay for your order anytime later !!");
				}
				int ex=ps.executeUpdate();
				String[] cost=dis.getCost();
				String[] qty=dis.getQty();
				String[] item=dis.getItem();
				for(int i=0;i<item.length;i++)
				{	if(item[i].equals(""))
						break;
					String s=cost[i];
					while(s.indexOf(",")!=-1)
					{   int j=s.indexOf(",");
						s=s.substring(0,j)+s.substring(j+1,s.length());
					}
					q="insert into itemlist values('"+dis.getCust()+"',?,?,?)";
					ps=con.prepareStatement(q);
					ps.clearParameters();
					ps.setString(1,item[i]);
					ps.setString(2,qty[i]);
					ps.setString(3,s);
					ex=ps.executeUpdate();
				}
			}
			req.getRequestDispatcher("/afterpay.jsp").include(req,res);
		}
		catch(Exception e)
		{	out.println(e);
		}
		out.close();
	}
}