<%@page import="clicks.clicks.Display"%>
<jsp:useBean id="id1" class="clicks.clicks.Display" scope="session" />
<jsp:setProperty name="id1" property="*" />
<% 	String cid=request.getParameter("custid");
 	String d=id1.getDate();
	String t=id1.getTime();
	String cost=id1.getTot();
	String[] item=id1.getItem();
	String[] qty=id1.getQty();
	String[] cost1=id1.getCost();
	Display d2=new Display();
	d2.setCust(cid);
	d2.setItem(item);
	d2.setQty(qty);
	d2.setCost(cost1);
	d2.setTime(t);
	d2.setDate(d);
	d2.setTot(cost);
	d2.setTqty(id1.getTqty());
	session.setAttribute("user",d2);
%>
<html>
	<head>
		<style>
			*{
				padding:0px;
				margin:0px;
			}
			body{
				width:100%;
				display:-webkit-box;
				-webkit-box-pack:center;
			}
			#main{
				width:1355px;
				max-height:660px;
				border:1px solid red;
				display:-webkit-box;
				-webkit-box-orient:vertical;
				-webkit-box-pack:center;
				background-image:url(images/background.jpg);
			}
			#pay{
				margin-left:20%;
				width:60%;
				height:50%;
			}
			#error{
				width:10%;
				height:50%;
			}
			#submit{
				height:60%;
				width:50%;
				font-weight:bold;
				font-family:italic;
				font-size:90%;
			}
			#submit:hover{
				color:red;
			}
		</style>
		<script>
			alpha=/[a-z]/i;
			no=/[0-9]/;
			function validate()
			{	num=document.getElementById("num").value;
				name=document.getElementById("name").value;
				exdate=new Date(document.getElementById("exdate").value);
				cdate=new Date();
				pin=document.getElementById("pin").value;
				ch=1;
				
				//for no
				cnt=0;
				for(i=0;i<num.length;i++)
					if(!num.charAt(i).match(no))
					{	cnt=1;
						break;
					}
				if(num.length==0)
				{	document.getElementById("error1").innerHTML="Field shouldn't be empty";
					ch=0;
				}
				else if(cnt==1)
				{	document.getElementById("error1").innerHTML="Card no should contain only integers";
					ch=0;
				}
				else if(num.length!=16)
				{	document.getElementById("error1").innerHTML="Card no should be 16 digits long";
					ch=0;
				}
				else
					document.getElementById("error1").innerHTML="";

				//for name
				cnt=0;
				for(i=0;i<name.length;i++)
					if(!name.charAt(i).match(alpha))
					{	cnt=1;
						break;
					}
				if(name.length==0)
				{	document.getElementById("error2").innerHTML="Field shouldn't be empty";
					ch=0;
				}
				else if(cnt==1)
				{	document.getElementById("error2").innerHTML="Name should contain only alphabets";
					ch=0;
				}
				else
					document.getElementById("error2").innerHTML="";
				
				//for date
				if(document.getElementById("exdate").value=="")
				{	document.getElementById("error3").innerHTML="Field shouldn't be empty";
					ch=0;
				}
				else if(exdate < cdate)
				{	document.getElementById("error3").innerHTML="card is expired";
					ch=0;
				}
				else
					document.getElementById("error3").innerHTML="";
				
				//for pin
				cnt=0;
				for(i=0;i<pin.length;i++)
					if(!pin.charAt(i).match(no))
					{	cnt=1;
						break;
					}
				if(pin.length==0)
				{	document.getElementById("error4").innerHTML="Field shouldn't be empty";
					ch=0;
				}
				else if(cnt==1)
				{	document.getElementById("error4").innerHTML="Pin should contain only integers";
					ch=0;
				}
				else if(pin.length!=4)
				{	document.getElementById("error4").innerHTML="Pin should be 4 digits long";
					ch=0;
				}
				else
					document.getElementById("error4").innerHTML="";
				
				if(ch==0)
					return false;
			}
		</script>
	</head>
	<body>
		<div id="main">
			<form method="POST" action="storedata">
				<table border="1" id="pay">
					<tr style="background-color:blue;">
						<td style="border:none;text-align:center;">Customer Id : <input type="text" value="<%=cid%>" style="border:none;background:none;" name="cid" /></td>
						<td colspan="2" style="border:none;text-align:center;">Date : <input type="text" value="<%=d%>" size="8" style="border:none;background:none;" name="date" /></td>
						<td style="border:none;text-align:center;">Time : <input type="text" value="<%=t%>" name="time" style="border:none;background:none;" size="8" /></td>
					</tr>
					<tr>
						<td colspan="4" style="text-align:center;background-color:blue;">PAYMENT DETAILS</td>
					</tr>
					<tr>
						<td width="35%" style="border:none;">Card No.</td>
						<td width="2%" style="border:none;text-align:center;">:</td>
						<td width="25%" style="border:none;"><input type="text" id="num" /></td>
						<td width="38%" style="border:none;color:red;" id="error1"></td>
					</tr>
					<tr>
						<td style="border:none;">Card Holder Name</td>
						<td style="border:none;text-align:center;">:</td>
						<td style="border:none;"><input type="text" id="name" /></td>
						<td style="border:none;color:red;" id="error2"></td>
					</tr>
					<tr>
						<td style="border:none;">Expiry Date</td>
						<td style="border:none;text-align:center;">:</td>
						<td style="border:none;"><input type="date" id="exdate" /></td>
						<td style="border:none;color:red;" id="error3"></td>
					</tr>
					<tr>
						<td style="border:none;">Pin</td>
						<td style="border:none;text-align:center;">:</td>
						<td style="border:none;"><input type="password" id="pin" /></td>
						<td style="border:none;color:red;" id="error4"></td>
					</tr>
					<tr height="15%">
						<td colspan="2" style="border:none;text-indent:5%;color:red;font-family:italic;font-weight:bold;">Total Cost : Rs. <input type="text" value="<%=cost%>" size="5" name="tot_cost" style="border:none;background:none;color:red;font-weight:bold;" /></td>
						<td style="border:none;text-indent:3%;"><input type="submit" onclick="return validate();" id="submit" name="submit" /></td>
						<td style="border:none;text-indent:3%;"><input type="submit" value="Do Payment later" id="submit" name="submit" /></td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>