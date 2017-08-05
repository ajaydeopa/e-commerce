date=new Date();
hour=date.getHours();
min=date.getMinutes();
sec=date.getSeconds();
day=date.getDate();
month=date.getMonth()+1;
year=date.getFullYear();
i1=date.getDay();
wday=["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"];
setInterval("fun1();",1000);
function fun1()
{	
	curdate=getmon()+" "+((day<10)?("0"+day):day)+", "+year;
	curtime=((hour>=13)?((hour%13+1)<10?("0"+(hour%13+1)):(hour%13+1)):((hour<10)?("0"+hour):hour))+" : "+((min<10)?("0"+min):min)+" : "+((sec<10)?("0"+sec):sec)+" "+((hour>=12)?"pm":"am");
	document.getElementById("h4").value=wday[i1]+", "+curdate+"  |  "+curtime;
	if( sec == 59)
	{	if( min == 59){
			if( hour==23){
				if( month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month==10 || month == 12 ){
					if( day == 31){
						if( month == 12){
							month = 1;
							year++;
						}
						else
							month++;
						day=1;
					}
					else
						day++;
				}
				else{
					if( month == 4 || month == 6 || month == 9 || month == 11 ){
						if( day == 30 ){
							month++;
							day=1;
						}
						else
							day++;
					}
					else
					{	if( day == 28 ){
							month++;
							day=1;
						}
						else
							day++;
					}
				}
				hour=0;
				if(i1==6)
					i1=0;
				else
					i1++;
			}
			else
				hour++;
			min=0;
		}
		else{
			min++;
		}
		sec=0;
	}
	else
		sec++;
}
function getmon(){
	return ((month==1)?"January":((month==2)?"February":((month==3)?"March":((month==4)?"April":((month==5)?"May":((month==6)?"June":((month==7)?"July":((month==8)?"August":((month==9)?"September":((month==10)?"October":((month==11)?"November":"December")))))))))));
}