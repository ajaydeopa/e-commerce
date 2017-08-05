package clicks.clicks;
import java.io.Serializable;
public class Display implements Serializable
{	private String item[]=new String[24];
	private String qty[]=new String[24];
	private String cost[]=new String[24];
	private String tot;
	private String date;
	private String time;
	private String cust;
	private String tqty;
	public void setCust(String val)
	{	cust=val;
	}
	public void setTqty(String val)
	{	tqty=val;
	}
	public void setItem(String val[])
	{	item=val;
	}
	public void setQty(String val[])
	{	qty=val;
	}
	public void setCost(String val[])
	{	cost=val;
	}
	public void setTot(String val)
	{
		tot=val;
	}
	public void setDate(String val)
	{	date=val;
	}
	public void setTime(String val)
	{	time=val;
	}
	public String[] getItem()
	{
		return item;
	}
	public String[] getQty()
	{
		return qty;
	}
	public String[] getCost()
	{
		return cost;
	}
	public String getTot()
	{
		return tot;
	}
	public String getDate()
	{
		return date;
	}
	public String getTime()
	{
		return time;
	}
	public String getCust()
	{
		return cust;
	}
	public String getTqty()
	{
		return tqty;
	}
}