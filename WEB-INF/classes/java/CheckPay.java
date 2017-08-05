import java.io.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class CheckPay extends HttpServlet
{	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{	PrintWriter out=res.getWriter();
		try
		{	res.setContentType("text/html");
			int ch=PayStatus.status(req.getParameter("sub"));
			if(ch==0)	//paid
				req.setAttribute("mes","Payment has being made !!");
			else if(ch==1)
				req.setAttribute("mes","No such customer !!");
			else	//not paid
				req.setAttribute("mes","payment not done !!");
			req.setAttribute("mes1",req.getParameter("sub"));
			req.getRequestDispatcher("/checkpay.jsp").include(req,res);
		}
		catch(Exception e)
		{	out.println(e);
		}
		out.close();
	}
}