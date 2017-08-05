import clicks.clicks.Display1;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class ShowData extends HttpServlet
{	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{	PrintWriter out=res.getWriter();
		String ch;
		String dt;
		String hist;
		Date d=new Date();
		int day=d.getDate();
		int mon=d.getMonth()+1;
		int year=2000+d.getYear()%100;
		String t=d.getHours()+":"+d.getMinutes();
		try
		{	res.setContentType("text/html");
			ch=req.getParameter("but");
			if(ch.equals("log out !"))
			{	AdminSignOut.func();
				req.getRequestDispatcher("/index.jsp").include(req,res);
			}
			else
			{	if(ch.equals("show history of last 1 day"))
				{	dt=year+"-"+((mon<10) ? "0"+mon : mon)+"-"+((day-1)<10? "0"+(day-1) :(day-1));
					hist="History of last 1 day";
				}
				else if(ch.equals("show history of last 1 week"))
				{	d=new Date(d.getTime() - 7*24*3600*1000);
					year=2000+d.getYear()%100;
					dt=year+"-"+(((d.getMonth()+1)<10) ? "0"+(d.getMonth()+1) : (d.getMonth()+1))+"-"+((d.getDate()<10) ? "0"+d.getDate() : d.getDate());
					hist="History of last 1 week";
				}
				else
				{	dt=year+"-"+(((mon-1)<10) ? "0"+(mon-1) : (mon-1))+"-"+((day<10) ? "0"+day : day);
					hist="History of last 1 month";
				}
				ArrayList<String> l=ShowData1.showData(dt,t);
				req.setAttribute("head",hist);
				if(l.size()==0)
					req.setAttribute("no","No "+ch.substring(5,ch.length()));
				else
				{	Display1 obj=new Display1();
					obj.setData(l);
					req.setAttribute("obj",obj);
				}
				req.getRequestDispatcher("/showdata.jsp").include(req,res);
			}
		}
		catch(Exception e)
		{	out.println(e);
		}
		out.close();
	}
}