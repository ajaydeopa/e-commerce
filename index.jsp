<%! String s; %>
<%	String ch=(String)request.getAttribute("mes");
	if(ch==null)
		s="Only for admin!";
	else
		s=ch;
%>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="index.css"></link>
		<script src="index.js"></script>
		<script src="javascript/datetime.js"></script>
	</head>
	<body onload="fun1();funx();">
		<div id="test"></div>
		<div id="main">
			<header>
				<div id="h1">
					<div style="float:left;"><input type="button" value="log in" id="login" onmouseover="af2();" onmouseout="af3();" /></div>
					<div style="float:left;padding-left:5px;"><input type="button" value="sign up" id="signup" /></div>
				</div>
				<form method="POST" action="adminverify">
					<div id="h2" onmouseover="af2();" onmouseout="af3();">
						<div id="hd1" name="mes"><small><%=s%></small></div>
						<div id="hd2">
							<div style="width:40%; text-align:center;"><small>User name</small></div>
							<div style="width:48%; text-align:center;"><small>Password</small></div>
						</div>
						<div id="hd3">
							&nbsp;<input type="text" size="18" style="border-radius:7px;" id="i1" name="uname" />&nbsp;
							<input type="password" size="15" style="border-radius:7px;" id="i1" name="pass" />&nbsp;
							<input type="submit" value="log in" style="border-radius:7px;width:50px;" name="sublogin" id="submit" width="30px" />
						</div>
					</div>
				</form>
				<div id="h3">
					eKart.<small><small><small>com</small></small></small>
				</div>
				<input type="text" id="h4" name="datetime" readonly />
				<a href="checkpay.jsp" id="h5">Check Payment Status</a>
			</header>
			<section>
				<!-- categories & item list -->
				<article id="art1">
					<div id="cat">
						<table width=100% height=80%>
							<tr><td height=15% id="adiv1"><img src="images/full.jpg" id="full" onclick="af1(-1);" /></br>Categories</td></tr>
							<tr><td id="cat3" onclick="af1(3);">men's clothing</td></tr>
							<tr><td id="cat4" onclick="af1(4);">women's wear</td></tr>
							<tr><td id="cat5" onclick="af1(5);">mobiles</td></tr>
							<tr><td id="cat6" onclick="af1(6);">laptops</td></tr>
							<tr><td id="cat7" onclick="af1(7);">tools</td></tr>
							<tr><td id="cat8" onclick="af1(8);">cosmetics</td></tr>
							<tr><td id="cat9" onclick="af1(9);">footwears</td></tr>
							<tr><td id="cat10" onclick="af1(10);">accessories</td></tr>
						</table>
						<table width=100% height=20%>
							<tr><td id="cat1" onmouseover="af1(1);">SPECIAL OFFERS</td></tr>
							<tr><td id="cat2" onmouseover="af1(2);">BOOKS</td></tr>
						</table>								
					</div>
					<div id="list">
						<!-- for special products-->
						<div id="list1">
							<table cellspacing="0" cellpadding="0" width=100% height=100% >
								<tr height=11%> <td width=70% colspan="2"> ITEM NAME </td> <td width=25%> COST(Rs) </td> </tr>
								<tr height=8%> <td width=7% id="tick11"></td> <td width=70% id="l1i1" name="it" onclick="cf1(1,1);" onmouseover="showimage(1,1);" onmouseout="hideimage(1,1);">Haier Washing Machine</td> <td width="25%" id="l1i1p">9,999</td> </tr>
								<tr height=8%> <td width=7% id="tick12"></td> <td width=70% id="l1i2" name="it" onclick="cf1(1,2);" onmouseover="showimage(1,2);" onmouseout="hideimage(1,2);">Godrej Washing Machine</td> <td width="25%" id="l1i2p">12,999</td> </tr>
								<tr height=8%> <td width=7% id="tick13"></td> <td width=70% id="l1i3" name="it" onclick="cf1(1,3);" onmouseover="showimage(1,3);" onmouseout="hideimage(1,3);">Videocon Washing Machine</td> <td width="25%" id="l1i3p">6,599</td> </tr>
								<tr height=8%> <td width=7% id="tick14"></td> <td width=70% id="l1i4" name="it" onclick="cf1(1,4);" onmouseover="showimage(1,4);" onmouseout="hideimage(1,4);">Nexus 6</td> <td width="25%" id="l1i4p">29,999</td> </tr>
								<tr height=8%> <td width=7% id="tick15"></td> <td width=70% id="l1i5" name="it" onclick="cf1(1,5);" onmouseover="showimage(1,5);" onmouseout="hideimage(1,5);">Geometric Double Bedsheet</td> <td width="25%" id="l1i5p">840</td> </tr>
								<tr height=8%> <td width=7% id="tick16"></td> <td width=70% id="l1i6" name="it" onclick="cf1(1,6);" onmouseover="showimage(1,6);" onmouseout="hideimage(1,6);">Checkered Double Bedsheet</td> <td width="25%" id="l1i6p">700</td> </tr>
								<tr height=8%> <td width=7% id="tick17"></td> <td width=70% id="l1i7" name="it" onclick="cf1(1,7);" onmouseover="showimage(1,7);" onmouseout="hideimage(1,7);">Lotto Pounce Shoes</td> <td width="25%" id="l1i7p">1,199</td> </tr>
								<tr height=8%> <td width=7% id="tick18"></td> <td width=70% id="l1i8" name="it" onclick="cf1(1,8);" onmouseover="showimage(1,8);" onmouseout="hideimage(1,8);">Lotto Truant II Shoes</td> <td width="25%" id="l1i8p">1,599</td> </tr>
							</table>
						</div>
						<!-- for books-->
						<div id="list2">
							<table cellspacing="0" cellpadding="0" width=100% height=100%>
								<tr height=11%> <td width=70% colspan="2"> ITEM NAME </td> <td width=25%> COST(Rs) </td> </tr>
								<tr height=8%> <td width=7% id="tick21"></td> <td width=70% id="l2i1" name="it" onclick="cf1(2,1);" onmouseover="showimage(2,1);" onmouseout="hideimage(2,1);">C in Depth</td>   <td width="25%" id="l2i1p">281</td> </tr>
								<tr height=8%> <td width=7% id="tick22"></td> <td width=70% id="l2i2" name="it" onclick="cf1(2,2);" onmouseover="showimage(2,2);" onmouseout="hideimage(2,2);">Encyclopaedia of Bioinformatics</td>   <td width="25%" id="l2i2p">11,000</td> </tr>
								<tr height=8%> <td width=7% id="tick23"></td> <td width=70% id="l2i3" name="it" onclick="cf1(2,3);" onmouseover="showimage(2,3);" onmouseout="hideimage(2,3);">Let Us C</td>   <td width="25%" id="l2i3p">230</td> </tr>
								<tr height=8%> <td width=7% id="tick24"></td> <td width=70% id="l2i4" name="it" onclick="cf1(2,4);" onmouseover="showimage(2,4);" onmouseout="hideimage(2,4);">Cracking the Coding Interview</td>   <td width="25%" id="l2i4p">300</td> </tr>
								<tr height=8%> <td width=7% id="tick25"></td> <td width=70% id="l2i5" name="it" onclick="cf1(2,5);" onmouseover="showimage(2,5);" onmouseout="hideimage(2,5);">Head First Java</td>   <td width="25%" id="l2i5p">699</td> </tr>
								<tr height=8%> <td width=7% id="tick26"></td> <td width=70% id="l2i6" name="it" onclick="cf1(2,6);" onmouseover="showimage(2,6);" onmouseout="hideimage(2,6);">.Net Interview Questions</td>   <td width="25%" id="l2i6p">214</td> </tr>
								<tr height=8%> <td width=7% id="tick27"></td> <td width=70% id="l2i7" name="it" onclick="cf1(2,7);" onmouseover="showimage(2,7);" onmouseout="hideimage(2,7);">Core JAVA</td>   <td width="25%" id="l2i7p">399</td> </tr>
								<tr height=8%> <td width=7% id="tick28"></td> <td width=70% id="l2i8" name="it" onclick="cf1(2,8);" onmouseover="showimage(2,8);" onmouseout="hideimage(2,8);">Foundations of Software Testing</td>   <td width="25%" id="l2i8p">500</td> </tr>
							</table>
						</div>
						<!-- for men clothing-->
						<div id="list3">
							<table cellspacing="0" cellpadding="0" width=100% height=100%>
								<tr height=11%> <td width=70% colspan="2"> ITEM NAME </td> <td width=25%> COST(Rs) </td> </tr>
								<tr height=8%> <td width=7% id="tick31"> </td> <td width=70% id="l3i1" name="it" onclick="cf1(3,1);" onmouseover="showimage(3,1);" onmouseout="hideimage(3,1);" >Men Round Neck T-Shirt</td>   <td width="25%" id="l3i1p">500</td> </tr>
								<tr height=8%> <td width=7% id="tick32"> </td> <td width=70% id="l3i2" name="it" onclick="cf1(3,2);" onmouseover="showimage(3,2);" onmouseout="hideimage(3,2);" >Men V-neck T-Shirt</td>   <td width="25%" id="l3i2p">349</td> </tr>
								<tr height=8%> <td width=7% id="tick33"> </td> <td width=70% id="l3i3" name="it" onclick="cf1(3,3);" onmouseover="showimage(3,3);" onmouseout="hideimage(3,3);" >Men Henley T-Shirt</td>   <td width="25%" id="l3i3p">400</td> </tr>
								<tr height=8%> <td width=7% id="tick34"> </td> <td width=70% id="l3i4" name="it" onclick="cf1(3,4);" onmouseover="showimage(3,4);" onmouseout="hideimage(3,4);" >Alan Jones Printed T-Shirt</td>   <td width="25%" id="l3i4p">699</td> </tr>
								<tr height=8%> <td width=7% id="tick35"> </td> <td width=70% id="l3i5" name="it" onclick="cf1(3,5);" onmouseover="showimage(3,5);" onmouseout="hideimage(3,5);" >Solid Men Polo T-Shirt</td>   <td width="25%" id="l3i5p">499</td> </tr>
								<tr height=8%> <td width=7% id="tick36"> </td> <td width=70% id="l3i6" name="it" onclick="cf1(3,6);" onmouseover="showimage(3,6);" onmouseout="hideimage(3,6);" >ETC Polo Neck T-Shirt</td>   <td width="25%" id="l3i6p"> 250 </td> </tr>
								<tr height=8%> <td width=7% id="tick37"> </td> <td width=70% id="l3i7" name="it" onclick="cf1(3,7);" onmouseover="showimage(3,7);" onmouseout="hideimage(3,7);" >Top Notch Henley T-Shirt</td>   <td width="25%" id="l3i7p">355</td> </tr>
								<tr height=8%> <td width=7% id="tick38"> </td> <td width=70% id="l3i8" name="it" onclick="cf1(3,8);" onmouseover="showimage(3,8);" onmouseout="hideimage(3,8);" >SayItLoud Graphic Print T-Shirt</td>   <td width="25%" id="l3i8p">499</td> </tr>
							</table>
						</div>
						<!-- for women clothing-->
						<div id="list4">
							<table cellspacing="0" cellpadding="0" width=100% height=100%>
								<tr height=11%> <td width=70% colspan="2"> ITEM NAME </td> <td width=25%> COST(Rs) </td> </tr>
								<tr height=8%> <td width=7% id="tick41"> </td> <td width=70% id="l4i1" name="it" onclick="cf1(4,1);" onmouseover="showimage(4,1);" onmouseout="hideimage(4,1);">GANT Womens Shift Dress 1</td> <td width="25%" id="l4i1p">1,299</td> </tr>
								<tr height=8%> <td width=7% id="tick42"> </td> <td width=70% id="l4i2" name="it" onclick="cf1(4,2);" onmouseover="showimage(4,2);" onmouseout="hideimage(4,2);">GANT Women Shift Dress</td> <td width="25%" id="l4i2p">1,199</td> </tr>
								<tr height=8%> <td width=7% id="tick43"> </td> <td width=70% id="l4i3" name="it" onclick="cf1(4,3);" onmouseover="showimage(4,3);" onmouseout="hideimage(4,3);">Printed Women Straight Kurta</td> <td width="25%" id="l4i3p">1,500</td> </tr>
								<tr height=8%> <td width=7% id="tick44"> </td> <td width=70% id="l4i4" name="it" onclick="cf1(4,4);" onmouseover="showimage(4,4);" onmouseout="hideimage(4,4);">GANT Women Gathered Dress</td> <td width="25%" id="l4i4p">1,499</td> </tr>
								<tr height=8%> <td width=7% id="tick45"> </td> <td width=70% id="l4i5" name="it" onclick="cf1(4,5);" onmouseover="showimage(4,5);" onmouseout="hideimage(4,5);">Women Solid Cardigan</td> <td width="25%" id="l4i5p">1,299</td> </tr>
								<tr height=8%> <td width=7% id="tick46"> </td> <td width=70% id="l4i6" name="it" onclick="cf1(4,6);" onmouseover="showimage(4,6);" onmouseout="hideimage(4,6);">Women A-line Kurta</td> <td width="25%" id="l4i6p">599</td> </tr>
								<tr height=8%> <td width=7% id="tick47"> </td> <td width=70% id="l4i7" name="it" onclick="cf1(4,7);" onmouseover="showimage(4,7);" onmouseout="hideimage(4,7);">Fashion Georgette Sari</td> <td width="25%" id="l4i7p">20,000</td> </tr>
								<tr height=8%> <td width=7% id="tick48"> </td> <td width=70% id="l4i8" name="it" onclick="cf1(4,8);" onmouseover="showimage(4,8);" onmouseout="hideimage(4,8);">Georgette Sari</td> <td width="25%" id="l4i8p">2,399</td> </tr>
							</table>
						</div>
						<!-- for mobile-->
						<div id="list5">									
							<table cellspacing="0" cellpadding="0" width=100% height=100%>
								<tr height=11%> <td width=70% colspan="2"> ITEM NAME </td> <td width=25%> COST(Rs) </td> </tr>
								<tr height=8%> <td width=7% id="tick51"> </td> <td width=70% id="l5i1" name="it" onclick="cf1(5,1);" onmouseover="showimage(5,1);" onmouseout="hideimage(5,1);">Lenovo A6000</td> <td width="25%" id="l5i1p">6,999</td> </tr>
								<tr height=8%> <td width=7% id="tick52"> </td> <td width=70% id="l5i2" name="it" onclick="cf1(5,2);" onmouseover="showimage(5,2);" onmouseout="hideimage(5,2);">Moto G (3rd Generation)</td> <td width="25%" id="l5i2p">12,999</td> </tr>
								<tr height=8%> <td width=7% id="tick53"> </td> <td width=70% id="l5i3" name="it" onclick="cf1(5,3);" onmouseover="showimage(5,3);" onmouseout="hideimage(5,3);">Micromax Canvas Xpress 2</td> <td width="25%" id="l5i3p">5,999</td> </tr>
								<tr height=8%> <td width=7% id="tick54"> </td> <td width=70% id="l5i4" name="it" onclick="cf1(5,4);" onmouseover="showimage(5,4);" onmouseout="hideimage(5,4);">Lenovo K3 Note</td> <td width="25%" id="l5i4p">9,999</td> </tr>
								<tr height=8%> <td width=7% id="tick55"> </td> <td width=70% id="l5i5" name="it" onclick="cf1(5,5);" onmouseover="showimage(5,5);" onmouseout="hideimage(5,5);">Redmi 2 Prime</td> <td width="25%" id="l5i5p">6,999</td> </tr>
								<tr height=8%> <td width=7% id="tick56"> </td> <td width=70% id="l5i6" name="it" onclick="cf1(5,6);" onmouseover="showimage(5,6);" onmouseout="hideimage(5,6);">Mi 4i</td> <td width="25%" id="l5i6p">12,999</td> </tr>
								<tr height=8%> <td width=7% id="tick57"> </td> <td width=70% id="l5i7" name="it" onclick="cf1(5,7);" onmouseover="showimage(5,7);" onmouseout="hideimage(5,7);">Moto X Play</td> <td width="25%" id="l5i7p">7,999</td> </tr>
								<tr height=8%> <td width=7% id="tick58"> </td> <td width=70% id="l5i8" name="it" onclick="cf1(5,8);" onmouseover="showimage(5,8);" onmouseout="hideimage(5,8);">Samsung Galaxy J5</td> <td width="25%" id="l5i8p">8,499</td> </tr>
							</table>
						</div>
						<!-- for laptops-->
						<div id="list6">			
							<table cellspacing="0" cellpadding="0" width=100% height=100%>
									<tr height=11%> <td width=70% colspan="2"> ITEM NAME </td> <td width=25%> COST(Rs) </td> </tr>
									<tr height=8%> <td width=7% id="tick61"> </td> <td width=70% id="l6i1" name="it" onclick="cf1(6,1);" onmouseover="showimage(6,1);" onmouseout="hideimage(6,1);">Micromax 2 in 1 Canvas Laptab</td> <td width="25%" id="l6i1p">13,499</td> </tr>
									<tr height=8%> <td width=7% id="tick62"> </td> <td width=70% id="l6i2" name="it" onclick="cf1(6,2);" onmouseover="showimage(6,2);" onmouseout="hideimage(6,2);">Asus EeeBook X205TA Notebook</td> <td width="25%" id="l6i2p">36,700</td> </tr>
									<tr height=8%> <td width=7% id="tick63"> </td> <td width=70% id="l6i3" name="it" onclick="cf1(6,3);" onmouseover="showimage(6,3);" onmouseout="hideimage(6,3);">HP 15-af114AU Notebook</td> <td width="25%" id="l6i3p">35,000</td> </tr>
									<tr height=8%> <td width=7% id="tick64"> </td> <td width=70% id="l6i4" name="it" onclick="cf1(6,4);" onmouseover="showimage(6,4);" onmouseout="hideimage(6,4);">Lenovo G50-70 Notebook</td> <td width="25%" id="l6i4p">34,499</td> </tr>
									<tr height=8%> <td width=7% id="tick65"> </td> <td width=70% id="l6i5" name="it" onclick="cf1(6,5);" onmouseover="showimage(6,5);" onmouseout="hideimage(6,5);">HP 15-r250TU (Notebook)</td> <td width="25%" id="l6i5p">30,000</td> </tr>
									<tr height=8%> <td width=7% id="tick66"> </td> <td width=70% id="l6i6" name="it" onclick="cf1(6,6);" onmouseover="showimage(6,6);" onmouseout="hideimage(6,6);">Dell Inspiron 3551 Notebook</td> <td width="25%" id="l6i6p">30,000</td> </tr>
									<tr height=8%> <td width=7% id="tick67"> </td> <td width=70% id="l6i7" name="it" onclick="cf1(6,7);" onmouseover="showimage(6,7);" onmouseout="hideimage(6,7);">Lenovo G50-80 Notebook</td> <td width="25%" id="l6i7p">35,499</td> </tr>
									<tr height=8%> <td width=7% id="tick68"> </td> <td width=70% id="l6i8" name="it" onclick="cf1(6,8);" onmouseover="showimage(6,8);" onmouseout="hideimage(6,8);">Asus EeeBook X205TA Notebook</td> <td width="25%" id="l6i8p">24,000</td> </tr>
							</table>
						</div>
						<!-- for tools-->
						<div id="list7">
							<table cellspacing="0" cellpadding="0" width=100% height=100%>
								<tr height=11%> <td width=70% colspan="2"> ITEM NAME </td> <td width=25%> COST(Rs) </td> </tr>
								<tr height=8%> <td width=7% id="tick71"> </td> <td width=70% id="l7i1" name="it" onclick="cf1(7,1);" onmouseover="showimage(7,1);" onmouseout="hideimage(7,1);">Aiwa Ratchet Screwdriver Set</td> <td width="25%" id="l7i1p">2,000</td> </tr>
								<tr height=8%> <td width=7% id="tick72"> </td> <td width=70% id="l7i2" name="it" onclick="cf1(7,2);" onmouseover="showimage(7,2);" onmouseout="hideimage(7,2);">9 jacks Ratchet Screwdriver Set</td> <td width="25%" id="l7i2p">1,999</td> </tr>
								<tr height=8%> <td width=7% id="tick73"> </td> <td width=70% id="l7i3" name="it" onclick="cf1(7,3);" onmouseover="showimage(7,3);" onmouseout="hideimage(7,3);">Victorinox 7 Tool Pocket</td> <td width="25%" id="l7i3p">1,957</td> </tr>
								<tr height=8%> <td width=7% id="tick74"> </td> <td width=70% id="l7i4" name="it" onclick="cf1(7,4);" onmouseover="showimage(7,4);" onmouseout="hideimage(7,4);">Adjustable Wrench</td> <td width="25%" id="l7i4p">355</td> </tr>
								<tr height=8%> <td width=7% id="tick75"> </td> <td width=70% id="l7i5" name="it" onclick="cf1(7,5);" onmouseover="showimage(7,5);" onmouseout="hideimage(7,5);">Bosch Hand Tools</td> <td width="25%" id="l7i5p">2,599</td> </tr>
								<tr height=8%> <td width=7% id="tick76"> </td> <td width=70% id="l7i6" name="it" onclick="cf1(7,6);" onmouseover="showimage(7,6);" onmouseout="hideimage(7,6);">Gauba Tool Kit</td> <td width="25%" id="l7i6p">1,599</td> </tr>
								<tr height=8%> <td width=7% id="tick77"> </td> <td width=70% id="l7i7" name="it" onclick="cf1(7,7);" onmouseover="showimage(7,7);" onmouseout="hideimage(7,7);">VISKO Screwdriver Set</td> <td width="25%" id="l7i7p">399</td> </tr>
								<tr height=8%> <td width=7% id="tick78"> </td> <td width=70% id="l7i8" name="it" onclick="cf1(7,8);" onmouseover="showimage(7,8);" onmouseout="hideimage(7,8);">Bosch Screwdriver</td> <td width="25%" id="l7i8p">533</td> </tr>
							</table>
						</div>
						<!-- for cosmetics-->
						<div id="list8">
							<table cellspacing="0" cellpadding="0" width=100% height=100%>
								<tr height=11%> <td width=70% colspan="2"> ITEM NAME </td> <td width=25%> COST(Rs) </td> </tr>
								<tr height=8%> <td width=7% id="tick81"> </td> <td width=70% id="l8i1" name="it" onclick="cf1(8,1);" onmouseover="showimage(8,1);" onmouseout="hideimage(8,1);">Amura Black Beauty </td> <td width="25%" id="l8i1p">146</td> </tr>
								<tr height=8%> <td width=7% id="tick82"> </td> <td width=70% id="l8i2" name="it" onclick="cf1(8,2);" onmouseover="showimage(8,2);" onmouseout="hideimage(8,2);">12 Shades Foundation Pallate</td> <td width="25%" id="l8i2p">1,399</td> </tr>
								<tr height=8%> <td width=7% id="tick83"> </td> <td width=70% id="l8i3" name="it" onclick="cf1(8,3);" onmouseover="showimage(8,3);" onmouseout="hideimage(8,3);">BH Cosmetics Brushes</td> <td width="25%" id="l8i3p">2,500</td> </tr>
								<tr height=8%> <td width=7% id="tick84"> </td> <td width=70% id="l8i4" name="it" onclick="cf1(8,4);" onmouseover="showimage(8,4);" onmouseout="hideimage(8,4);">Matte Lipstick </td> <td width="25%" id="l8i4p">699</td> </tr>
								<tr height=8%> <td width=7% id="tick85"> </td> <td width=70% id="l8i5" name="it" onclick="cf1(8,5);" onmouseover="showimage(8,5);" onmouseout="hideimage(8,5);">Amura Colour Cosmetics</td> <td width="25%" id="l8i5p">150</td> </tr>
								<tr height=8%> <td width=7% id="tick86"> </td> <td width=70% id="l8i6" name="it" onclick="cf1(8,6);" onmouseover="showimage(8,6);" onmouseout="hideimage(8,6);">Eye Makeup</td> <td width="25%" id="l8i6p">600</td> </tr>
								<tr height=8%> <td width=7% id="tick87"> </td> <td width=70% id="l8i7" name="it" onclick="cf1(8,7);" onmouseover="showimage(8,7);" onmouseout="hideimage(8,7);">Foundation Brush</td> <td width="25%" id="l8i7p">2,999</td> </tr>
								<tr height=8%> <td width=7% id="tick88"> </td> <td width=70% id="l8i8" name="it" onclick="cf1(8,8);" onmouseover="showimage(8,8);" onmouseout="hideimage(8,8);">L Oreal Paris Cream</td> <td width="25%" id="l8i8p">999</td> </tr>
							</table>
						</div>
						<!-- for shoes-->
						<div id="list9">
							<table cellspacing="0" cellpadding="0" width=100% height=100%>
								<tr height=11%> <td width=70% colspan="2"> ITEM NAME </td> <td width=30%> COST(Rs) </td> </tr>
								<tr height=8%> <td width=7% id="tick91"> </td> <td width=70% id="l9i1" name="it" onclick="cf1(9,1);" onmouseover="showimage(9,1);" onmouseout="hideimage(9,1);">Puma Starling DP Shoes</td> <td width="30%" id="l9i1p">1,499</td> </tr>
								<tr height=8%> <td width=7% id="tick92"> </td> <td width=70% id="l9i2" name="it" onclick="cf1(9,2);" onmouseover="showimage(9,2);" onmouseout="hideimage(9,2);">Puma Pluto DP Shoes</td> <td width="30%" id="l9i2p">1,299</td> </tr>
								<tr height=8%> <td width=7% id="tick93"> </td> <td width=70% id="l9i3" name="it" onclick="cf1(9,3);" onmouseover="showimage(9,3);" onmouseout="hideimage(9,3);">Puma Argus DP Shoes</td> <td width="30%" id="l9i3p">999</td> </tr>
								<tr height=8%> <td width=7% id="tick94"> </td> <td width=70% id="l9i4" name="it" onclick="cf1(9,4);" onmouseover="showimage(9,4);" onmouseout="hideimage(9,4);">Lotto Rapid Shoes</td> <td width="30%" id="l9i4p">1,299</td> </tr>
								<tr height=8%> <td width=7% id="tick95"> </td> <td width=70% id="l9i5" name="it" onclick="cf1(9,5);" onmouseover="showimage(9,5);" onmouseout="hideimage(9,5);">Lotto Maiorca II Shoes</td> <td width="30%" id="l9i5p">2,299</td> </tr>
								<tr height=8%> <td width=7% id="tick96"> </td> <td width=70% id="l9i6" name="it" onclick="cf1(9,6);" onmouseover="showimage(9,6);" onmouseout="hideimage(9,6);">Lotto Fire Shoes</td> <td width="30%" id="l9i6p">3,699</td> </tr>
								<tr height=8%> <td width=7% id="tick97"> </td> <td width=70% id="l9i7" name="it" onclick="cf1(9,7);" onmouseover="showimage(9,7);" onmouseout="hideimage(9,7);">Puma Lynus DP Sneakers</td> <td width="30%" id="l9i7p">1,379</td> </tr>
								<tr height=8%> <td width=7% id="tick98"> </td> <td width=70% id="l9i8" name="it" onclick="cf1(9,8);" onmouseover="showimage(9,8);" onmouseout="hideimage(9,8);">Puma Hip Hop Sneakers</td> <td width="30%" id="l9i8p">1,249</td> </tr>
							</table>
						</div>
						<!-- for accessories-->
						<div id="list10">
							<table cellspacing="0" cellpadding="0" width=100% height=100%>
								<tr height=11%> <td width=70% colspan="2"> ITEM NAME </td> <td width=25%> COST(Rs) </td> </tr>
								<tr height=8%> <td width=7% id="tick101"> </td> <td width=70% id="l10i1" name="it" onclick="cf1(10,1);" onmouseover="showimage(10,1);" onmouseout="hideimage(10,1);">JBL Headphone</td> <td width="25%" id="l10i1p">1,000</td> </tr>
								<tr height=8%> <td width=7% id="tick102"> </td> <td width=70% id="l10i2" name="it" onclick="cf1(10,2);" onmouseover="showimage(10,2);" onmouseout="hideimage(10,2);">Philips Wired Headphones</td> <td width="25%" id="l10i2p">500</td> </tr>
								<tr height=8%> <td width=7% id="tick103"> </td> <td width=70% id="l10i3" name="it" onclick="cf1(10,3);" onmouseover="showimage(10,3);" onmouseout="hideimage(10,3);">Philips Wire Headphones</td> <td width="25%" id="l10i3p">220</td> </tr>
								<tr height=8%> <td width=7% id="tick104"> </td> <td width=70% id="l10i4" name="it" onclick="cf1(10,4);" onmouseover="showimage(10,4);" onmouseout="hideimage(10,4);">Sennheiser HD 180</td> <td width="25%" id="l10i4p">947</td> </tr>
								<tr height=8%> <td width=7% id="tick105"> </td> <td width=70% id="l10i5" name="it" onclick="cf1(10,5);" onmouseover="showimage(10,5);" onmouseout="hideimage(10,5);">Logitech B175 Wireless Mouse</td> <td width="25%" id="l10i5p">650</td> </tr>
								<tr height=8%> <td width=7% id="tick106"> </td> <td width=70% id="l10i6" name="it" onclick="cf1(10,6);" onmouseover="showimage(10,6);" onmouseout="hideimage(10,6);">Canon Printer</td> <td width="25%" id="l10i6p">4,500</td> </tr>
								<tr height=8%> <td width=7% id="tick107"> </td> <td width=70% id="l10i7" name="it" onclick="cf1(10,7);" onmouseover="showimage(10,7);" onmouseout="hideimage(10,7);">Canon Wireless Printer</td> <td width="25%" id="l10i7p">4,000</td> </tr>
								<tr height=8%> <td width=7% id="tick108"> </td> <td width=70% id="l10i8" name="it" onclick="cf1(10,8);" onmouseover="showimage(10,8);" onmouseout="hideimage(10,8);">Dell Mouse</td> <td width="25%" id="l10i8p">233</td> </tr>
							</table>
						</div>
					</div>
				</article>
				<article id="art2">
				
					<div id="image">
						<div id="name">
							
						</div>
						<div id="b">
							
						</div>
						<div id="detail">
							
						</div>
					</div>
					<div id="default">
					</div>
				
				</article>
				<article id="art3">
					<div style="text-align:center;font-size:18px;font-style:italic;">USER'S CART</br><p id="para" style="margin-top:1%;">Click on item(s) to remove it from cart</p></div>
					</br>
					<!-- for next & back button -->
					<div id="cd1">
						<div style="width:80px;"><img src="images/back.jpg" id="b1" onclick="cf2();" height="20" ></div>
						<div><img src="images/next.jpg" id="b2" onclick="cf3();" height="20" ></div>
					</div>
					
					<form action="cart.jsp">
					<!-- for first cart -->
					<div id="div1" style="cursor:pointer;">
						<table width=100% height=60% style="text-align:center;">
							<tr>
								<td width=70% colspan="2">PRODUCT NAME</td>
								<td width=6%>QTY</td>
								<td width=24%>COST/PIECE</td>
							</tr>
							<tr>
								<td width=6% id="add11"></td>
								<td><input type="text" name="item" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d1r1" onclick="cf4(1,1);" readonly/></td>
								<td><input type="text" name="qty" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d1r1q" readonly/></td>
								<td><input type="text" name="cost" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d1r1p" readonly/></td>
							</tr>
							<tr>
								<td width=6% id="add12"></td>
								<td><input type="text" name="item" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d1r2" onclick="cf4(1,2);" readonly/></td>
								<td><input type="text" name="qty" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d1r2q" readonly/></td>
								<td><input type="text" name="cost" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d1r2p" readonly/></td>
							</tr>
							<tr>
								<td width=6% id="add13"></td>
								<td><input type="text" name="item" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d1r3" onclick="cf4(1,3);" readonly/></td>
								<td><input type="text" name="qty" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d1r3q" readonly/></td>
								<td><input type="text" name="cost" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d1r3p" readonly/></td>
							</tr>
							<tr>
								<td width=6% id="add14"></td>
								<td><input type="text" name="item" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d1r4" onclick="cf4(1,4);" readonly/></td>
								<td><input type="text" name="qty" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d1r4q" readonly/></td>
								<td><input type="text" name="cost" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d1r4p" readonly/></td>
							</tr>
							<tr>
								<td width=6% id="add15"></td>
								<td><input type="text" name="item" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d1r5" onclick="cf4(1,5);" readonly/></td>
								<td><input type="text" name="qty" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d1r5q" readonly/></td>
								<td><input type="text" name="cost" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d1r5p" readonly/></td>
							</tr>
							<tr>
								<td width=6% id="add16"></td>
								<td><input type="text" name="item" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d1r6" onclick="cf4(1,6);" readonly/></td>
								<td><input type="text" name="qty" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d1r6q" readonly/></td>
								<td><input type="text" name="cost" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d1r6p" readonly/></td>
							</tr>
							<tr>
								<td width=6% id="add17"></td>
								<td><input type="text" name="item" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d1r7" onclick="cf4(1,7);" readonly/></td>
								<td><input type="text" name="qty" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d1r7q" readonly/></td>
								<td><input type="text" name="cost" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d1r7p" readonly/></td>
							</tr>
							<tr>
								<td width=6% id="add18"></td>
								<td><input type="text" name="item" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d1r8" onclick="cf4(1,8);" readonly/></td>
								<td><input type="text" name="qty" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d1r8q" readonly/></td>
								<td><input type="text" name="cost" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d1r8p" readonly/></td>
							</tr>
						</table>
					</div>
					
					<!-- for second cart -->
					<div id="div2">
						<table width=100% height=60% style="text-align:center;">
							<tr>
								<td width=70% colspan="2">PRODUCT NAME</td>
								<td width=6%>QTY</td>
								<td width=24%>COST/PIECE</td>
							</tr>
							<tr>
								<td width=5% id="add21"></td>
								<td><input type="text" name="item" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d2r1" onclick="cf4(2,1);" readonly/></td>
								<td><input type="text" name="qty" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d2r1q" readonly/></td>
								<td><input type="text" name="cost" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d2r1p" readonly/></td>
							</tr>
							<tr>
								<td width=5% id="add22"></td>
								<td><input type="text" name="item" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d2r2" onclick="cf4(2,2);" readonly/></td>
								<td><input type="text" name="qty" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d2r2q" readonly/></td>
								<td><input type="text" name="cost" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d2r2p" readonly/></td>
							</tr>
							<tr>
								<td width=5% id="add23"></td>
								<td><input type="text" name="item" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d2r3" onclick="cf4(2,3);" readonly/></td>
								<td><input type="text" name="qty" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d2r3q" readonly/></td>
								<td><input type="text" name="cost" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d2r3p" readonly/></td>
							</tr>
							<tr>
								<td width=5% id="add24"></td>
								<td><input type="text" name="item" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d2r4" onclick="cf4(2,4);" readonly/></td>
								<td><input type="text" name="qty" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d2r4q" readonly/></td>
								<td><input type="text" name="cost" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d2r4p" readonly/></td>
							</tr>
							<tr>
								<td width=5% id="add25"></td>
								<td><input type="text" name="item" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d2r5" onclick="cf4(2,5);" readonly/></td>
								<td><input type="text" name="qty" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d2r5q" readonly/></td>
								<td><input type="text" name="cost" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d2r5p" readonly/></td>
							</tr>
							<tr>
								<td width=5% id="add26"></td>
								<td><input type="text" name="item" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d2r6" onclick="cf4(2,6);" readonly/></td>
								<td><input type="text" name="qty" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d2r6q" readonly/></td>
								<td><input type="text" name="cost" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d2r6p" readonly/></td>
							</tr>
							<tr>
								<td width=5% id="add27"></td>
								<td><input type="text" name="item" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d2r7" onclick="cf4(2,7);" readonly/></td>
								<td><input type="text" name="qty" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d2r7q" readonly/></td>
								<td><input type="text" name="cost" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d2r7p" readonly/></td>
							</tr>
							<tr>
								<td width=5% id="add28"></td>
								<td><input type="text" name="item" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d2r8" onclick="cf4(2,8);" readonly/></td>
								<td><input type="text" name="qty" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d2r8q" readonly/></td>
								<td><input type="text" name="cost" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d2r8p" readonly/></td>
							</tr>
						</table>
					</div>
					
					<!-- for third cart -->
					<div id="div3">
						<table width=100% height=60% style="text-align:center;">
							<tr>
								<td width=70% colspan="2">PRODUCT NAME</td>
								<td width=6%>QTY</td>
								<td width=24%>COST/PIECE</td>
							</tr>
							<tr>
								<td width=6% id="add31"></td>
								<td><input type="text" name="item" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d3r1" onclick="cf4(3,1);" readonly/></td>
								<td><input type="text" name="qty" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d3r1q" readonly/></td>
								<td><input type="text" name="cost" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d3r1p" readonly/></td>
							</tr>
							<tr>
								<td width=6% id="add32"></td>
								<td><input type="text" name="item" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d3r2" onclick="cf4(3,2);" readonly/></td>
								<td><input type="text" name="qty" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d3r2q" readonly/></td>
								<td><input type="text" name="cost" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d3r2p" readonly/></td>
							</tr>
							<tr>
								<td width=6% id="add33"></td>
								<td><input type="text" name="item" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d3r3" onclick="cf4(3,3);" readonly/></td>
								<td><input type="text" name="qty" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d3r3q" readonly/></td>
								<td><input type="text" name="cost" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d3r3p" readonly/></td>
							</tr>
							<tr>
								<td width=6% id="add34"></td>
								<td><input type="text" name="item" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d3r4" onclick="cf4(3,4);" readonly/></td>
								<td><input type="text" name="qty" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d3r4q" readonly/></td>
								<td><input type="text" name="cost" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d3r4p" readonly/></td>
							</tr>
							<tr>
								<td width=6% id="add35"></td>
								<td><input type="text" name="item" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d3r5" onclick="cf4(3,5);" readonly/></td>
								<td><input type="text" name="qty" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d3r5q" readonly/></td>
								<td><input type="text" name="cost" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d3r5p" readonly/></td>
							</tr>
							<tr>
								<td width=6% id="add36"></td>
								<td><input type="text" name="item" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d3r6" onclick="cf4(3,6);" readonly/></td>
								<td><input type="text" name="qty" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d3r6q" readonly/></td>
								<td><input type="text" name="cost" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d3r6p" readonly/></td>
							</tr>
							<tr>
								<td width=6% id="add37"></td>
								<td><input type="text" name="item" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d3r7" onclick="cf4(3,7);" readonly/></td>
								<td><input type="text" name="qty" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d3r7q" readonly/></td>
								<td><input type="text" name="cost" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d3r7p" readonly/></td>
							</tr>
							<tr>
								<td width=6% id="add38"></td>
								<td><input type="text" name="item" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d3r8" onclick="cf4(3,8);" readonly/></td>
								<td><input type="text" name="qty" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d3r8q" readonly/></td>
								<td><input type="text" name="cost" style="background:none;width:100%;height:100%;border:none;text-align:center;" id="d3r8p" readonly/></td>
							</tr>
						</table>
					</div>
					
					<!-- for cost -->
					<section id="sec">
						<table width=100% height=100%>
							<tr> <td width=20%>Total</td> <td width=7%>: Rs</td> <td width=30%><input type="text" id="total" value="0" style="background:none;border:none;" readonly /></td> <td></td> </tr>
							<tr> <td width=20%>Tax</td> <td width=7%>: Rs</td> <td width=30%><input type="text" id="tax" value="0" style="background:none;border:none;" readonly /></td> <td>5% of cost</td> </tr>
							<tr> <td width=20%>Grand Total</td> <td width=7%>: Rs</td> <td width=30%><input type="text" id="gtotal" value="0" name="tot" style="background:none;border:none;" readonly /></td> <td style="text-align:end;padding-right:10%;"><input type="submit" value="BUY" id="sub" onclick="return validate();" /></td></tr>
						</table>
					</section>
					</form>
				</article>
			</section>
			<footer>
				All CopyRights Reserved | ISO Certified
			</footer>
		</div>
	</body>
</html>