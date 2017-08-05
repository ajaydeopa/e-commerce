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
				background-image:url(images/background.jpg);
			}
			h2{
				text-align:center;
				margin-top:4%;
			}
			#main form{
				margin-top:4%;
				text-align:center;
			}
			#b{
				height:10%;
				width:20%;
				text-transform:uppercase;
				font-family:italic;
				font-weight:bold;
			}
			#b:hover{
				font-size:90%;
				color:red;
			}
			#b1{
				margin-top:-6.5%;
				margin-right:12%;
				float:right;
				width:5%;
				height:4%;
				border-radius:6px;
				font-family:italic;
				border:none;
				font-weight:bold;
			}
			#b2{
				margin-top:-6.5%;
				margin-right:5%;
				float:right;
				width:5%;
				height:4%;
				border-radius:6px;
				border:none;
				font-family:italic;
				font-weight:bold;
			}
			#b1:hover,#b2:hover{
				color:red;
				background-color:white;
				border:1px solid black;
			}
		</style>
	</head>
	<body>
		<div id="main">
			<h2 style="padding-top:2%;padding-top:-2%;background-color:blue;margin-top:0%;height:8%;">WELCOME ADMIN !!</h2>
			<form method="POST" action="showdata">
				<input type="submit" value="log out !" id="b1" name="but" />
				<input type="button" value="Settings" id="b2" name="sett" />
				<input type="submit" name="but" value="show history of last 1 day" id="b" />
				<input type="submit" name="but" value="show history of last 1 week" id="b" style="margin-left:5%;" />
				<input type="submit" name="but" value="show history of last 1 month" id="b" style="margin-left:5%;" />
			</form>
		</div>
	</body>
</html>