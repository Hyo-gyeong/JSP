<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <%!
public String parseDay(int cnt, String day){
	if (cnt % 7 == 0)
		return "<font color='red'>"+day+"</font>";
	else if ((cnt+1) % 7 == 0)
		return "<font color='blue'>"+day+"</font>";
	else
		return day;
}
 %>
<html>
<head>
<meta charset="UTF-8">
<title>Problem02</title>
<style>
table{
table-layout: fixed;
width:90%;
border : 1px solid black;
border-collapse:collapse;
margin-top:20px;
}
td {
border : 1px solid black;
border-collapse:collapse;
}
.cpt{
margin-right: 40px;
font-size:20px;	
}
.month{
text-align:center;
margin-left:350px;
margin-right:350px;
font-size: 20px;
}
.year{
text-align:left;
margin-left:80px;
font-size: 20px;
}
a {
text-decoration:none;
}
.day{
font-weight: bold;
font-size:20px;
height: 23px;
text-align:center;
}
.date{
text-align:left;
font-size: 20px;
height: 60px;
}
.date > font{
text-align: left;
margin-top: 0;
padding-top:0;
}
.memo_year{
width: 50px;
margin-right:5px;
}
.memo_month,
.memo_day{
width: 40px;
margin: 5px;
}
.memo_form_wrapper{
margin:auto;
padding:10px 0px 10px 70px;
width: 60%;
align-item:center;
}
a{
color:black;
}
</style>
<script>

function noEvent() {
if (event.keyCode == 116) {
event.keyCode= 2;
return false;
}
else if(event.ctrlKey && (event.keyCode==78 || event.keyCode == 82))
{
return false;
}
}
document.onkeydown = noEvent;

</script>
</head>
<body>
<div class="memo_form_wrapper">
<form method=post >
일정 추가하기 : 
	<input class="memo_year" type=text name="memo_year">년
	<input class="memo_month" type=text name="memo_month">월
	<input class="memo_day" type=text name="memo_day">일&emsp;&emsp;
	<input class="memo" name="memo" value="내용"></input>
	<input type=submit value="일정추가">
</form>
</div>
<%
//session.invalidate();
String para_year = request.getParameter("memo_year");
String para_month = request.getParameter("memo_month");
String para_day = request.getParameter("memo_day");
String memo_key = "";
int key = 0;


if (para_year != null){
	key = Integer.parseInt(request.getParameter("memo_year")) +//2020
	Integer.parseInt(request.getParameter("memo_month"));//11 ->key = 2031
	memo_key = Integer.toString(key) + para_day; //2031+day

	String memo;
	if (session.getAttribute(memo_key) == null)
		memo =  "-"+request.getParameter("memo");
	else
		memo = session.getAttribute(memo_key) + "<br>-"+ request.getParameter("memo");
	session.setAttribute(memo_key, memo);//"203112"
}
else
	para_year = "";

Calendar cal = Calendar.getInstance();

Calendar today = Calendar.getInstance();
int today_year = today.get(Calendar.YEAR);
int today_month = today.get(Calendar.MONTH);
int today_date = today.get(Calendar.DATE);

int cnt = 0;

String Year=request.getParameter("year");
String Month=request.getParameter("month");

int c_year, c_month;
if(Year == null && Month == null){
	c_year = today_year;
	c_month = today_month;
}
else{
	c_year=Integer.parseInt(Year);
	c_month=Integer.parseInt(Month);
	   if(c_month<0) { c_month=11; c_year=c_year-1; } 
	   if(c_month>11) { c_month=0; c_year=c_year+1; }
}


out.println("<span class='year'><a href='Problem02.jsp?year="+(c_year-1)+"&month="+c_month+"'>◀</a>");
out.print(c_year+"년");
out.println("<a href='Problem02.jsp?year="+(c_year+1)+"&month="+c_month+"'>▶</a></span>");
out.println("<span class='month'><a href='Problem02.jsp?year="+(c_year)+"&month="+(c_month-1)+"'>◀</a>");
out.print(c_month+1+"월");
out.println("<a href='Problem02.jsp?year="+(c_year)+"&month="+(c_month+1)+"'>▶</a></span>");
out.println("<span class='cpt'><a href='Problem02.jsp?year="+today_year+"&month="+today_month+"'>");
out.println("오늘 날짜:"+today_year+"-"+(today_month+1)+"-"+today_date);
out.println("</a></span>");
cal.set(c_year, c_month, 1);

int start = cal.getMinimum(Calendar.DAY_OF_WEEK);
int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
int date = cal.get(Calendar.DATE);
int day = cal.get(Calendar.DAY_OF_WEEK);//1~

int today_sum = c_year + c_month + 1;
String today_key = Integer.toString(today_sum);

out.println("<div align='center'>");
out.println("<table>");

String[] days = {"일","월","화","수","목","금","토"};
out.println("<tr>");
for (int i = 0; i < 7; i++){
	String ch_day = days[i];
	out.println("<td class='day'>"+parseDay(cnt, ch_day)+"</td>");
	cnt++;
}
out.println("</tr>");

out.println("<tr>");
for (int i = 1; i < day; i++){
	out.println("<td>&nbsp;</td>");
	cnt++;
}
for (int i = start; i <= end; i++){
	String temp_str = Integer.toString(i);
	String today_str = Integer.toString(c_year+c_month+1);
	if (session.getAttribute(today_str + Integer.toString(i)) != null)
		out.println("<td class='date' style='vertical-align:top'>"+parseDay(cnt, temp_str)+"<br>"+session.getAttribute(today_str + Integer.toString(i))+"</td>");
	else
		out.println("<td class='date' style='vertical-align:top'>"+parseDay(cnt, temp_str)+"</td>");
	cnt++;
	if (cnt % 7 == 0){
		out.println("</tr>");
		out.println("<tr>");
	}
}
while(cnt % 7 != 0){
	out.println("<td>&nbsp;</td>");
	cnt++;
}
out.println("</tr>");
out.println("</table>");
out.println("</div>");


%>

</body>
</html>