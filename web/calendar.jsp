<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet"/>
        <title>Calendar</title>
	<SCRIPT LANGUAGE="JavaScript">

var now   = new Date();


var firstyear=now.getYear()-1;  //how many years back!
var lastyear=now.getYear()+3;  //1 higher than the years from today you
wish to display.
var colour="#cccccc";//Greyed out days.
var coltoday="#FF0000";//todays colour.

// Click Function, Currently just displays the cell date, Modify for
what you want to happen!
// NB: cellday[cell] hold the date clicked in ddmmyyyy format.
//-------------------------------------------------------------

function message(cell)
{
alert(cellday[cell]);
}

// Calender Code, Modify only if you know what your doing. If you don't, just keep a back up!
//--------------------------------------------------------------------------------------------

var day   = now.getDate();
var month = now.getMonth();
var year  = now.getYear();
if (year < 2000)
year = year + 1900;
var daycell=new Array();
var cellday=new Array();
var n;

// Create Calender
//-----------------

function calendar()
{
var calobj, caption

caption='JSP Calendar';

calobj='<table border="1" cellspacing="0" cellpadding="0"
class="calborder">';
calobj+='<tr><td>';
calobj+='<table border="0" cellspacing="2" cellpadding="0"
class="calender">'
calobj+='<tr><td colspan="5" class="calcaption">'+caption+'</td></tr>';
calobj+='<tr><td colspan="3">';
calobj+='<select name="calmonth" onChange="updatecalendar()"
class="caldropdowns">';
calobj+='<option>January<option>February<option>March<option>April<option>May';
calobj+='<option>June<option>July<option>August<option>September<option>October';

calobj+='<option>November<option>December</select>';
calobj+='</td><td colspan="2" align="right">';
calobj+='<select name="calyear" onChange="updatecalendar()"
class="caldropdowns">';

for (n=firstyear;n<lastyear;n++)
{
  if (n==year)
  {
     calobj+='<option selected value="'+n+'">'+n+'</option>';
  }
  else
  {
    calobj+='<option value="'+n+'">'+n+'</option>';
  }
}
calobj+='</select>';
calobj+='</td></tr>';
calobj+='<tr><td colspan="5" class="calinsideborder">';
calobj+='<table cellspacing="0" class="calinsidesettings" border="1">';
calobj+='<tr align="center">';
calobj+='<td width="14%" class="caldays">Sun</td>';
calobj+='<td width="14%" class="caldays">Mon</td>';
calobj+='<td width="14%" class="caldays">Tue</td>';
calobj+='<td width="14%" class="caldays">Wed</td>';
calobj+='<td width="14%" class="caldays">Thu</td>';
calobj+='<td width="14%" class="caldays">Fri</td>';
calobj+='<td width="14%" class="caldays">Sat</td>';
calobj+='</tr>';

var calcell,calrow
for (calcell=0;calcell<6;calcell++)
{
calobj+='<tr><td class="calwknd" width="14%" id=cal'+(calcell*7)+'
onclick=message('+(calcell*7)+');>&nbsp;</td>';
calobj+='<td width="14%" class="calwkdy" id=cal'+(calcell*7+1)+'
onclick=message('+(calcell*7+1)+');>&nbsp;</td>';
calobj+='<td width="14%" class="calwkdy" id=cal'+(calcell*7+2)+'
onclick=message('+(calcell*7+2)+');>&nbsp;</td>';
calobj+='<td width="14%" class="calwkdy" id=cal'+(calcell*7+3)+'
onclick=message('+(calcell*7+3)+');>&nbsp;</td>';
calobj+='<td width="14%" class="calwkdy" id=cal'+(calcell*7+4)+'
onclick=message('+(calcell*7+4)+');>&nbsp;</td>';
calobj+='<td width="14%" class="calwkdy" id=cal'+(calcell*7+5)+'
onclick=message('+(calcell*7+5)+');>&nbsp;</td>';
calobj+='<td class="calwknd" width="14%" id=cal'+(calcell*7+6)+'
onclick=message('+(calcell*7+6)+');>&nbsp;</td></tr>';
}
calobj+='</table>';
calobj+='</td></tr>';
calobj+='<tr align="center">';
calobj+='<td width="20%">';
calobj+='<input type="button" name="backyear" value="&lt;&lt;"
class="calbutts" onclick=gobackyear();updatecalendar()>';
calobj+='</td>';
calobj+='<td width="20%">';
calobj+='<input type="button" name="backmonth" value="&lt;"
class="calbutts" onclick=gobackmonth();updatecalendar()>';
calobj+='</td>';
calobj+='<td width="20%">';
calobj+='<input type="button" name="TODAY" value="TODAY"
class="calbutts" onclick=caltoday()>';
calobj+='</td>';
calobj+='<td width="20%">';
calobj+='<input type="button" name="onmonth" value="&gt;"
class="calbutts" onclick=goonmonth();updatecalendar()>';
calobj+='</td>';
calobj+='<td width="20%">';
calobj+='<input type="button" name="onyear" value="&gt;&gt;"
class="calbutts" onclick=goonyear();updatecalendar()>';
calobj+='</td>';
calobj+='</tr>';
calobj+='</table>';
calobj+='</td>';
calobj+='</tr>';
calobj+='</table>';

document.write(calobj)

daycell[0]=cal0;
daycell[1]=cal1;
daycell[2]=cal2;
daycell[3]=cal3;
daycell[4]=cal4;
daycell[5]=cal5;
daycell[6]=cal6;
daycell[7]=cal7;
daycell[8]=cal8;
daycell[9]=cal9;
daycell[10]=cal10;
daycell[11]=cal11;
daycell[12]=cal12;
daycell[13]=cal13;
daycell[14]=cal14;
daycell[15]=cal15;
daycell[16]=cal16;
daycell[17]=cal17;
daycell[18]=cal18;
daycell[19]=cal19;
daycell[20]=cal20;
daycell[21]=cal21;
daycell[22]=cal22;
daycell[23]=cal23;
daycell[24]=cal24;
daycell[25]=cal25;
daycell[26]=cal26;
daycell[27]=cal27;
daycell[28]=cal28;
daycell[29]=cal29;
daycell[30]=cal30;
daycell[31]=cal31;
daycell[32]=cal32;
daycell[33]=cal33;
daycell[34]=cal34;
daycell[35]=cal35;
daycell[36]=cal36;
daycell[37]=cal37;
daycell[38]=cal38;
daycell[39]=cal39;
daycell[40]=cal40;
daycell[41]=cal41;

caltoday()
updatecalendar()
}

// Set today
//-----------

function caltoday()
{
day   = now.getDate();
calmonth.selectedIndex=now.getMonth();
calyear.value=now.getYear();
updatecalendar()
}

// Refresh Cells and Dates
//-------------------------

function updatecalendar()
{
month = calmonth.selectedIndex
year  = calyear.value

var firstOfMonth = new Date (year, month, 1);
var startingPos = firstOfMonth.getDay();
var curday=1
var days=monthdays(month,year)
var prevdays=monthdays(month-1,year)
var str

for (n=0;n<42;n++)
{
  if (startingPos==n)
  {
        if (month==now.getMonth()&year==now.getYear()&curday==now.getDate())
        {
        str=curday
    daycell[n].innerHTML="<font
color='"+coltoday+"'>"+str.toString()+"</font>"
        }
        else
        {
        daycell[n].innerHTML=curday
        }
        setday(n,month,year,curday);
    startingPos++
    curday++
  }
  else
  {
            if (startingPos==66)
          {
          setday(n,month+1,year,curday);
          str=curday
           curday++
          }
          else
          {
          setday(n,month-1,year,prevdays-startingPos+n+1);
      str=prevdays-startingPos+n+1
          }
      daycell[n].innerHTML="<font
color='"+colour+"'>"+str.toString()+"</font>"
  }

  if (curday>days){
  curday=1
  startingPos=66
  }
}
}

// Set day variables
//-------------------

function setday(cell,month,year,day)
{
month++
if (month==13){month=1;year++}
if (month==0){month=12;year--}

var strmon;
var stryear;
var strday;

strmon=month.toString();
if (strmon.length==1){strmon="0"+strmon}
strday=day.toString();
if (strday.length==1){strday="0"+strday}
stryear=year.toString();

cellday[cell]=strday+strmon+stryear
}

// Check days in month
//---------------------

function monthdays(month,year)  {
var days;
if (month==0 || month==2 || month==4 || month==6 || month==7 ||
month==9 || month==11 || month==-1 || month==12)  days=31;
else if (month==3 || month==5 || month==8 || month==10) days=30;
else if (month==1)  {
if (leapyear(year)) { days=29; }
else { days=28; }
}
return (days);
}

// Check for leap year
//---------------------

function leapyear (Year) {
if (((Year % 4)==0) && ((Year % 100)!=0) || ((Year % 400)==0)) {
return (true);
} else { return (false); }
}

// Forward one month
//-------------------

function goonmonth()
{
  month = calmonth.selectedIndex
  month++
  if (month==12)
  {
    month=0;
    goonyear()
  }
  calmonth.selectedIndex=month
}

// Forward one year
//------------------

function goonyear()
{
  year  = calyear.value
  year++
  if (year==lastyear){year=firstyear}
  calyear.value=year
}

// Back one month
//----------------

function gobackmonth()
{
  month = calmonth.selectedIndex
  month--
  if (month==-1)
  {
    month=11;
    gobackyear()
  }
  calmonth.selectedIndex=month
}

// Back one year
//---------------

function gobackyear()
{
  year  = calyear.value
  year--
  if (year<firstyear){year=lastyear-1}
  calyear.value=year
}

//-->
</SCRIPT>
</head>

<body>

<aside>
<p style="font-size:24px; text-align: left; color:#000">Welcome, <%=session.getAttribute("userid")%></p>
</aside>
  <article>
    <header style="font-size:20px; text-align: left; color:#000">Options</header>
    <section style="font-size:16px; text-align: left; color:#000"><a href='http://dibekiar.tk:8080/calendar/'>Go to calendar</a></section>
    <footer style="font-size:16px; text-align: left; color:#000"><%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
<a href='logout.jsp'>Log out</a>
<%
    }
%></footer>
  </article>


<SCRIPT LANGUAGE="JavaScript">

calendar();


</SCRIPT>
</body>
</html>

