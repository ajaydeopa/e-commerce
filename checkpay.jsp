<%	String ch=(String)request.getAttribute("mes");
	if(ch==null)
		ch="";
	String cid=(String)request.getAttribute("mes1");
	if(cid==null)
		cid="";
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
				-webkit-box-align:center;
			}
			#main{
				width:1355px;
				height:660px;
				border:1px solid red;
				display:-webkit-box;
				-webkit-box-orient:vertical;
				background-image:url(images/background.jpg);
			}
			#h{
				margin-left:30%;
				margin-top:17%;
			}
			#sub{
				margin-left:5%;
				width:10%;
				height:4%;
				font-family:italic;
				font-weight:bold;
			}
			#sub:hover{
				color:red;
			}
			#error{
				margin-top:5%;
				text-align:center;
				color:red;
			}
			#see{
				display:none;
				margin-top:2%;
				width:10%;
				height:5%;
				margin-left:45%;
				font-family:italic;
				font-weight:bold;
				font-size:90%;
			}
			#see:hover,#go:hover{
				color:red;
			}
			#go{
				margin-left:4%;
			}
		</style>
		<script>
			window.onload=f1;
			function f1()
			{	if(document.getElementById("error").innerHTML=="Payment has being made !!" || document.getElementById("error").innerHTML=="payment not done !!")
					document.getElementById("see").style.display="block";
				if(document.getElementById("error").innerHTML=="payment not done !!")
					document.getElementById("see").value="Do payment!";
			}
		</script>
	</head>
	<body>
		<div id="main">
			</br><a href="index.jsp" id="go">Go to main page</a>
			<form action="checkpay" method="POST">
				<h3 id="h">Enter Customer ID : <input type="text" id="id" value="<%=cid%>" name="sub" /><input type="submit" value="Submit" id="sub" name="submit" /></h3>
			</form>
			<div>
			<form action="showitem" method="POST">
				<h4 id="error"><%=ch%></h4>
				<input type="text" value="<%=cid%>" name="sub" style="display:none;" />
				<input type="submit" value="see your order" id="see" name="see" />
			</form>
		</div>
	</body>
</html>