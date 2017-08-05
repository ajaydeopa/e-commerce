<%	String ch1=(String)request.getAttribute("payinfo");
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
			#hide{
				text-align:center;
				font-size:110%;
				font-family:italic;
				font-weight:bold;
				height:40%;
			}
			#sub{
				width:17%;
				height:4%;
				font-family:italic;
				font-weight:bold;
				font-size:90%;
				margin-left:41%;
				margin-top:-10%;
			}
			#sub:hover{
				color:red;
			}
		</style>
	</head>
	<body>
		<div id="main">
			<p id="hide"><%=ch1%></p>
			<form action="index.jsp">
				<input type="submit" value="Go back to main page !" id="sub" />
			</form>
		</div>
	</body>
</html>