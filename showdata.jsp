<%@page import="clicks.clicks.Display1" %>
<%@page import="java.util.*"%>
<%! int i=0; %>
<%	Display1 d=(Display1)request.getAttribute("obj");
	String h=(String)request.getAttribute("head");
	String ch=(String)request.getAttribute("no");
%>
<html>
	<head>
		<style type="text/css">
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
				background-image:url(images/background.jpg);
			}
			#no{
				display:none;
			}
			#tab{
				margin-left:12.5%;
				text-align:center;
			}
			#tab tr{
				background-color:yellow;
			}
			#but{
				border:none;background:
				none;margin-left:20%;
				width:28%;
				font-family:italic;
				font-size:100%;
			}
			#but:hover{
				color:red;
			}
		</style>
		<script>
			window.onload=f1;
			function f1()
			{	if(!(document.getElementById("no").innerHTML=="null"))
					document.getElementById("no").style.display="block";
			}
		</script>
	</head>
	<body>
		<div id="main">
			<h2 style="text-align:center;"><%=h%></h2>
			</br>
			<h3 id="no" style="text-align:center;"><%=ch%></h3>
			<% 	if(ch==null) { 
				ArrayList<String> data=d.getData();
			%>
				<form method='POST' action='showitem'>
					<table width='75%' id="tab">
						<tr style='font-family:italic;font-weight:bold;'>
							<td>Customer ID</td>
							<td>Total Item Purchase</td>
							<td>Total Cost</td>
							<td>Date of Order</td>
							<td>Time of Order</td>
							<td style='text-align:left;text-indent:2%;'>Payment Status</td>
						</tr>
						<% while(i<data.size()) { %>
							
							<tr>
								<td><%=data.get(i++)%></td>
								<td><%=data.get(i++)%></td>
								<td><%=data.get(i++)%></td>
								<td><%=data.get(i++)%></td>
								<td><%=data.get(i++)%></td>
								<td><%=data.get(i++)%>
									<input type='submit' value='see full detail <%=data.get(i-6)%>' id="but" name='sub' />
								</td>
						<% } %>
					</table>
				</form>
			<%}%>
		</div>
	</body>
</html>
<% i=0; %>