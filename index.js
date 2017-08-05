// for category and item list

n=-1;
check=0;
function showlist1(x)
{	document.getElementById("list").style.display="block";
	document.getElementById("list"+x).style.display="block";
	//setTimeout(function() {show(x);},10);
	document.getElementById("list"+x).style.width="100%";
	for(m=1;m<11;m++)
		if(m!=x)
		{	document.getElementById("list"+m).style.display="none";
			document.getElementById("list"+m).style.width="0%";
		}
}
/*function show(x)
{	document.getElementById("list"+x).style.width="100%";
}*/
function ff2()
{
	check=0;
}
function af1(x)	//for category and item list
{	if(x>0) //to show list
	{	document.getElementById("cat").style.width="36%";
		if(n!=-1)
			document.getElementById("cat"+n).style.backgroundColor="#F6F3EC";
		document.getElementById("cat"+x).style.backgroundColor="#1ec7e6";
		if(n!=-1)
		{	if(check==1)
				setTimeout(function() {af1(x);},450);
			else
				showlist1(x);
			document.getElementById("cat"+n).style.height="8%";
			document.getElementById("list"+x).style.display="block";
			check=0;
		}
		else
		{	setTimeout(function() {showlist1(x);},450);
			check=1;
			setTimeout(function() {ff2();},400);
		}
		//alert(check+"  "+x);
		if( x<3 )
			document.getElementById("cat"+x).style.height="32%";
		else
			document.getElementById("cat"+x).style.height="10%";
		document.getElementById("full").style.display="block";
		n=x;
	}
	else  //to hide list
	{	document.getElementById("cat").style.width="100%";
		document.getElementById("list").style.display="none";
		document.getElementById("list"+n).style.display="block";
		document.getElementById("list"+n).style.width="0%";
		document.getElementById("cat"+n).style.height=( n < 3 ) ? "30%" : "8%";
		document.getElementById("cat"+n).style.backgroundColor="#F6F3EC";
		document.getElementById("full").style.display="none";
		n=-1;
	}
}
function af2()  //display user name & password
{	document.getElementById("login").style.height="100%";
	document.getElementById("h2").style.display="block";
	document.getElementById("login").style.borderBottomLeftRadius="0px";
	document.getElementById("login").style.borderBottomRightRadius="0px";
	document.getElementById("login").style.backgroundColor="orange";
	document.getElementById("login").style.border="1px solid orange";
}
function af3()  //hide user name & password
{	document.getElementById("login").style.height="80%";
	document.getElementById("h2").style.display="none";
	document.getElementById("login").style.borderBottomLeftRadius="4px";
	document.getElementById("login").style.borderBottomRightRadius="4px";
	document.getElementById("login").style.backgroundColor="";
	document.getElementById("login").style.border="";
}


// for image
function showimage(a,b){
	document.getElementById("image").style.display="block";
	document.getElementById("default").style.display="none";
	document.getElementById("name").innerHTML=document.getElementById("l"+a+"i"+b).innerHTML;
	img="itemimage/image"+a+b+" .jpg";
	if(a==1)
		document.getElementById("b").innerHTML='<img src="'+img+'" height="270" width="250" style="padding-left:100px;" />';
	else if(a==2)
		document.getElementById("b").innerHTML='<img src="'+img+'" height="270" width="250" style="padding-left:100px;" />';
	else if(a==3)
		document.getElementById("b").innerHTML='<img src="'+img+'" height="270" width="250" style="padding-left:100px;" />';
	else if(a==4)
		document.getElementById("b").innerHTML='<img src="'+img+'" height="270" width="250" style="padding-left:100px;" />';
	else if(a==5)
		document.getElementById("b").innerHTML='<img src="'+img+'" height="300" width="170" style="padding-left:135px;" />';
	else if(a==6)
		document.getElementById("b").innerHTML='<img src="'+img+'" height="245" width="316" style="padding-left:70px;" />';
	else if(a==7)
		document.getElementById("b").innerHTML='<img src="'+img+'" height="245" width="316" style="padding-left:70px;" />';
	else if(a==8)
		document.getElementById("b").innerHTML='<img src="'+img+'" height="270" width="250" style="padding-left:100px;" />';
	else if(a==9)
		document.getElementById("b").innerHTML='<img src="'+img+'" height="245" width="400" style="padding-left:27px;" />';
	else if(a==10)
		document.getElementById("b").innerHTML='<img src="'+img+'" height="245" width="316" style="padding-left:70px;" />';
}
function hideimage(a,b){
	document.getElementById("image").style.display="none";
	document.getElementById("default").style.display="block";
	document.getElementById("name").innerHTML="";
	document.getElementById("b").innerHTML="";
}
			
// for user cart
	
x=0;
i=1;
d=1;
cost=0;
pre=0;
store=[];
var temp1=0,temp2=0;
function cf1(a,b)
{	if(d=='3' && i=='9')
	{	document.getElementById("para").innerHTML="Your carts are full";
		return;
	}
	check=0;
	temp=i;
	for(k=d;k>0;k--)
	{	if(k==d)
			m=temp-1;
		else
			m=8;
		for(j=m;j>0;j--)
		{	if( document.getElementById("d"+k+"r"+j).value == document.getElementById("l"+a+"i"+b).innerHTML )
			{	document.getElementById("d"+k+"r"+j+"q").value=parseInt(document.getElementById("d"+k+"r"+j+"q").value)+1;
				cos=document.getElementById("l"+a+"i"+b+"p").innerHTML;
				if(cos.match(','))
				{	po=cos.indexOf(',');
					cos=cos.substr(0,po)+cos.substr(po+1,cos.length);
				}
				//cost = cost + parseInt(document.getElementById("d"+k+"r"+j+"p").innerHTML);
				cost = cost + parseInt(cos);
				document.getElementById("div"+pre).style.display="none";
				document.getElementById("div"+k).style.display="block";
				document.getElementById("b1").style.display = ( k > 1 ) ? "block" : "none";
				document.getElementById("b2").style.display=( k != d ) ? "block" : "none";
				document.getElementById("para").innerHTML="Your " +k+ " cart";
				document.getElementById("add"+temp1+temp2).innerHTML="";
				document.getElementById("add"+k+j).innerHTML='<img src="images/add.jpg" style="height:8; width:8;" />';
				pre=k;
				temp1=k;
				temp2=j;
				check=1;
				break;
			}
		}
		if(check == 1)
			break;
	}
	if( check == 0 )
	{	if(i=='9')
		{	document.getElementById("div"+d).style.display="none";
			d=parseInt(d)+1;
			i=1;
		}
		if( i == '1' )
			document.getElementById("para").innerHTML="Your " +d+ " cart";
		if( d == '2' || d == '3' )
			document.getElementById("b1").style.display="block";
		document.getElementById("b2").style.display="none";
		if(pre!=d && pre!=0)
			document.getElementById("div"+pre).style.display="none";
		document.getElementById("div"+d).style.display="block";
		document.getElementById("d"+d+"r"+i).value=document.getElementById("l"+a+"i"+b).innerHTML;
		store[8*(d-1)+i-1]="tick"+a+b;
		document.getElementById("d"+d+"r"+i+"q").value=1;
		document.getElementById("d"+d+"r"+i+"p").value=document.getElementById("l"+a+"i"+b+"p").innerHTML;
		cos=document.getElementById("l"+a+"i"+b+"p").innerHTML;
		if(cos.match(','))
		{	po=cos.indexOf(',');
			cos=cos.substr(0,po)+cos.substr(po+1,cos.length);
		}
		document.getElementById("tick"+a+b).innerHTML='<img src="images/tick.jpg" style="height:10;" />';
		if(temp1!=0&&temp2!=0)
			document.getElementById("add"+temp1+temp2).innerHTML="";
		document.getElementById("add"+d+i).innerHTML='<img src="images/add.jpg" style="height:8; width:8;" />';
		//cost = cost + parseInt(document.getElementById("d"+d+"r"+i+"p").innerHTML);
		cost = cost + parseInt(cos);
		i=parseInt(i)+1;
		pre=d;
		temp1=d;
		temp2=i-1;
	}
	document.getElementById("total").value=cost;
	document.getElementById("tax").value=((parseInt(cost) * 0.05)).toFixed(2);
	document.getElementById("gtotal").value=parseInt((parseInt(cost) + parseInt(cost) * 0.05));
	document.getElementById("para").style.color="black";
}
function cf2()
{	document.getElementById("b2").style.display="block";
	document.getElementById("div"+pre).style.display="none";
	pre=parseInt(pre)-1;
	document.getElementById("div"+pre).style.display="block";
	document.getElementById("para").innerHTML="Your " +pre+ " cart";
	if(pre == '1')
		document.getElementById("b1").style.display="none";
}
function cf3()
{	document.getElementById("b1").style.display="block";
	document.getElementById("div"+pre).style.display="none";
	pre=parseInt(pre)+1;
	document.getElementById("div"+pre).style.display="block";
	document.getElementById("para").innerHTML="Your " +pre+ " cart";
	if( pre == d || document.getElementById("d"+(parseInt(pre)+1)+"r1").value == "" )
		document.getElementById("b2").style.display="none";
}
function cf4(a,b)
{	if(document.getElementById("d"+a+"r"+b).value != "")
	{	cos=document.getElementById("d"+a+"r"+b+"p").value;
		if(cos.match(','))
		{	po=cos.indexOf(',');
			cos=cos.substr(0,po)+cos.substr(po+1,cos.length);
		}
		cost = cost - parseInt(cos)*parseInt(document.getElementById("d"+a+"r"+b+"q").value);
		//cost = (parseInt(cost) - parseInt(document.getElementById("d"+a+"r"+b+"p").innerHTML)*parseInt(document.getElementById("d"+a+"r"+b+"q").innerHTML));
		document.getElementById("total").value=cost;
		document.getElementById("tax").value=((parseInt(cost) * 0.05)).toFixed(2);
		document.getElementById("gtotal").value=parseInt((parseInt(cost) + parseInt(cost) * 0.05));
		document.getElementById(store[8*(a-1)+b-1]).innerHTML="";
		if(a<=temp1 || b<=temp2)
		{	document.getElementById("add"+temp1+temp2).innerHTML="";
			if(("add"+a+b) != ("add"+temp1+temp2))
			{	if(d!=1)
				{	if(temp2==1)
					{	temp1=temp1-1;
						temp2=8;
					}
					else
						temp2=temp2-1;					
				}
				else
					if(temp2!=1)
						temp2=temp2-1;
			}
			else
			{	if(d!=1)
				{	if(i==2)
					{	temp1=d-1;
						temp2=8
					}
					else
					{	temp2=i-2;
						temp1=d;
					}
				}
				else if(i!=2)
					temp2=i-2;
			}
			if(d!=1 || i!=2)
				document.getElementById("add"+temp1+temp2).innerHTML='<img src="images/add.jpg" style="height:8; width:8;" />';
		}
		//alert(a+"  "+b);
		for(j=a;j<=d;j++)
		{	if( j == d )
			{	last=i-1;
				beg = ( a == d ) ? b : 1;
			}
			else
			{	last=8;
				beg=b;
			}
			for(k=beg;k<=last;k++)
			{	if(k==8 && j==d)
				{	document.getElementById("d"+j+"r"+k).value="";
					document.getElementById("d"+j+"r"+k+"q").value="";
					document.getElementById("d"+j+"r"+k+"p").value="";
				}
				else	
				{	if(k==8)
					{	document.getElementById("d"+j+"r"+k).value=document.getElementById("d"+(j+1)+"r1").value;
						document.getElementById("d"+j+"r"+k+"q").value=document.getElementById("d"+(j+1)+"r1q").value;
						document.getElementById("d"+j+"r"+k+"p").value=document.getElementById("d"+(j+1)+"r1p").value;
						store[8*(j-1)+k-1]=store[8*(j-1)+k];
					}
					else
					{	document.getElementById("d"+j+"r"+k).value=document.getElementById("d"+j+"r"+(k+1)).value;
						document.getElementById("d"+j+"r"+k+"q").value=document.getElementById("d"+j+"r"+(k+1)+"q").value;
						document.getElementById("d"+j+"r"+k+"p").value=document.getElementById("d"+j+"r"+(k+1)+"p").value;
						store[8*(j-1)+k-1]=store[8*(j-1)+k];
					}
				}
			}
		}
		if(i==2 && d!=1)
		{	d--;
			if(pre==(d+1))
			{	document.getElementById("div"+d).style.display="block";
				document.getElementById("div"+(d+1)).style.display="none";
				document.getElementById("para").innerHTML="Your " +d+ " cart";
				pre=d;
			}
			i=9;
			if(d==1)
				document.getElementById("b1").style.display="none";
			if( pre == d )
				document.getElementById("b2").style.display="none";
		}
		else
			i--;
	}
	/*else
		alert("empty");*/
}
function validate()
{	if(document.getElementById("d1r1").value=="")
	{	document.getElementById("para").innerHTML="Your cart is empty!!";
		document.getElementById("para").style.color="red";
		return false;
	}
}

function funx()
{	
	bool=1;
	for(ii=1;ii<4;ii++)
	{	for(jj=1;jj<9;jj++)
		{	if(document.getElementById("d"+ii+"r"+jj).value=="")
			{	bool=0;
				if(jj!=1 || ii==1)
				{	i=jj;
					d=ii;
					document.getElementById("div"+ii).style.display="block";
				}
				else
				{	i=9;
					d=ii-1;
					document.getElementById("div"+(ii-1)).style.display="block";
				}
				if(ii!=1)
					document.getElementById("b1").style.display="block";
				pre=ii;
				document.getElementById("para").innerHTML="Your " +ii+ " cart";
				break;
			}
			temp1=ii;
			temp2=jj;
			xx=1;
			for(kk=1;kk<11;kk++)
			{	for(ll=1;ll<9;ll++)
					if(document.getElementById("d"+ii+"r"+jj).value==document.getElementById("l"+kk+"i"+ll).innerHTML)
					{	store[8*(ii-1)+jj-1]="tick"+kk+ll;
						document.getElementById("tick"+kk+ll).innerHTML='<img src="images/tick.jpg" style="height:10;" />';
						xx=0;
						break;
					}
				if(xx==0)
					break;
			}
			cos=document.getElementById("d"+ii+"r"+jj+"p").value;
			if(cos.match(','))
			{	po=cos.indexOf(',');
				cos=cos.substr(0,po)+cos.substr(po+1,cos.length);
			}
			cost = cost + parseInt(cos)*parseInt(document.getElementById("d"+ii+"r"+jj+"q").value);
			document.getElementById("total").value=cost;
			document.getElementById("tax").value=((parseInt(cost) * 0.05)).toFixed(2);
			document.getElementById("gtotal").value=(parseInt(cost) + parseInt(cost) * 0.05);
		}
		if(bool==0)
			break;
		document.getElementById("div"+ii).style.display="none";
	}
	document.getElementById("add"+temp1+temp2).innerHTML='<img src="images/add.jpg" style="height:8; width:8;" />';
}