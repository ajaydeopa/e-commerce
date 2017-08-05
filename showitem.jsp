<%@page import="clicks.clicks.Display"%>
<%! int i=0; %>
<%  Display d=(Display)request.getAttribute("obj");
	String item[]=d.getItem();
	String qty[]=d.getQty();
	String cost[]=d.getCost();
	String dt=d.getDate();
	String cid=d.getCust();
	String t=d.getTime();
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
			#tab{
				margin-left:15%;
				margin-top:0.5%;
				border:1px solid black;
				width:70%;
			}
			#tab{
				margin-left:15%;
				margin-top:0.5%;
				border:1px solid black;
			}
			#b{
				width:30%;
				height:3%;
				margin-top:0.4%;
				margin-left:60%;
				display:none;
			}
			#bo td{
				border-bottom:1px solid black;
			}
			.bor td{
				border-left:1px solid black;
			}
			#top td{
				border-top:1px solid black;
			}
			#button{
				height:110%;
				width:30%;
				font-family:italic;
				font-weight:bold;
			}
			#button:hover{
				color:red;
			}
		</style>
		<script>
			window.onload=f1;
			function f1()
			{	if(document.getElementById("hh").innerHTML=="VERIFY YOUR ORDER!")
					document.getElementById("b").style.display="block";
			}
		</script>
	</head>
	<body>
		<div id="main">
			<h2 style="text-align:center;font-style:italic;" width="100%" id="hh"><%=request.getAttribute("h2")%></h2>
			<form method="POST" action="payment.jsp">
				<table id="tab" height="80%" width="70%">
					<tr id="bo" height="8%">
						<td width="30%" style="text-align:center">Customer ID(generated by system) : </td>
						<td width="25%"><input type="text" id="cid" value="<%=cid%>" name="custid" style="border:none;background:none;" readonly /></td>
						<td width="15%" style="text-align:center">Date & Time of Order :</td>
						<td><input type="text" value="<%=dt%>" id="dt1" size="8" style="text-align:center;border:none;background:none;" readonly />
							<input type="text" value="<%=t%>" id="dt2" size="5" style="text-align:center;border:none;background:none;" readonly />
						</td>
					</tr>
					<tr id="bo" class="bor" height="5%" style="text-align:center">
						<td colspan="2">NAME OF ITEM(s)</td>
						<td>QUANTITY</td>
						<td>COST</td>
					</tr>
					<%	for(i=0;i<24;i++)
						{	if(item.length<=i){
					%>
					<tr class="bor" style="text-align:center">
						<td colspan="2"><input type="text" name="item" size="80" value="" style="text-align:center;border:none;background:none;" readonly /></td> 
						<td><input type="text" name="qty" value="" style="text-align:center;border:none;background:none;" readonly /></td>
						<td><input type="text" name="cost" value="" style="text-align:center;border:none;background:none;" readonly /></td>
					</tr>
						<%	}else{ %>
					<tr class="bor" style="text-align:center">
						<td colspan="2"><input type="text" name="item" size="80" value="<%=item[i]%>" style="text-align:center;border:none;background:none;" readonly /></td> 
						<td><input type="text" name="qty" value="<%=qty[i]%>" style="text-align:center;border:none;background:none;" readonly /></td>
						<td><input type="text" name="cost" value="<%=cost[i]%>" style="text-align:center;border:none;background:none;" readonly /></td>
					</tr>
				
						<% }} %>
					<tr id="top" class="bor" style="text-align:center;font-weight:bold;" height="5%">
						<td colspan="2">Total (including 5% tax)</td>
						<td><input type="text" name="tqty" value="<%=d.getTqty()%>" style="text-align:center;border:none;background:none;font-weight:bold;" readonly /></td>
						<td>Rs <input type="text" name="tot" size="5" value="<%=d.getTot()%>" style="text-align:center;border:none;background:none;font-weight:bold;" readonly /></td>
					</tr>
				</table>
				<div id="b">
					<a href="project.jsp"><input type="button" value="Cancel Order" id="button" /></a>
					<input type="submit" value="Make Payment" style="margin-left:20%;" id="button" />
				</div>
			</form>
		</div>
	</body>
</html>