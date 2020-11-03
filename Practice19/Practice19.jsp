<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar"%>
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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar</title>
<style>
table, td{
border : 1px solid black;
border-collapse:collapse;
}
td{
margin: auto;
padding: 10px 35px;
font-size: 20px;
}
.cpt{
text-align: right;
padding-bottom:20px;
font-weight:bold;
}
.day{
font-weight: bold;
}
.date{
text-align:right;
margin-right:20px;
}
</style>
</head>
<body>
<%
Calendar cal = Calendar.getInstance();
int year = cal.get(Calendar.YEAR);
int month = cal.get(Calendar.MONTH)+1;//0~
int date = cal.get(Calendar.DATE);
int day = cal.get(Calendar.DAY_OF_WEEK);//1~
int start = cal.getMinimum(Calendar.DATE);
int end = cal.getActualMaximum(Calendar.DATE);

Calendar today = Calendar.getInstance();
int today_year = today.get(Calendar.YEAR);//2020
int today_month = today.get(Calendar.MONTH)+1;//10
int today_date = today.get(Calendar.DATE);//20

int cnt = 0;

out.println("<div align='center'>");
out.println("<table>");
out.println("<caption class='cpt'>"+today_year+"-"+today_month+"-"+today_date+"</caption");

String[] days = {"일","월","화","수","목","금","토"};
out.println("<tr>");
for (int i = 0; i < 7; i++){
	String ch_day = days[i];
	out.println("<td class='day'>"+parseDay(cnt, ch_day)+"</td>");
	cnt++;
}
out.println("</tr>");

out.println("<tr>");
for (int i = 1; i < day-1; i++){
	out.println("<td>&nbsp;</td>");
	cnt++;
}
for (int i = start; i <= end; i++){
	String temp_str = Integer.toString(i);
	out.println("<td>"+parseDay(cnt, temp_str)+"</td>");
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
