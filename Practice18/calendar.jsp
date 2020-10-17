<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar</title>
<style>
  .year_month {
    font-size:30px;
    font-weight:bold; 
    padding-bottom: 20px;
    border-bottom: 1px solid black; 
  }
</style>
</head>
<body>
<%
String para_year = request.getParameter("YEAR");
String para_month = request.getParameter("MONTH");
int year, month;
Calendar cal = Calendar.getInstance();

if (para_year.equals("") || para_month.equals("")){
	year = cal.get(Calendar.YEAR);
	month = cal.get(Calendar.MONTH);
	cal.set(year, month, 1);
	out.println("<p class='year_month'>" + year + "년 " + (month+1) + "월</p>");
}
else{
	year = Integer.parseInt(para_year);
	month = Integer.parseInt(para_month);
	cal.set(year, month-1, 1);
	out.println("<p class='year_month'>"+ year + "년  " + month + "월</p>");
}

int day = cal.get(Calendar.DAY_OF_WEEK);
int start = cal.getActualMinimum(Calendar.DATE);
int end = cal.getActualMaximum(Calendar.DATE);
int count_br = 0;
out.println("<table><tr>");
for (int j = 1; j < day; j++){
	count_br++;
	out.println("<td>&nbsp</td>");
}

for (int i = start; i <= end; i++){
	out.println("<td>"+i+"</td>");
	count_br++;
	if (count_br % 7 == 0){
		count_br = 0;
		out.println("</tr>"); 
	}
}
out.println("</table>");
%>
</body>
</html>