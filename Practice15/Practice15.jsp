<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice15</title>
<style>
  .year_month {
    font-size:50px;
    margin: 30px 0;
    font-weight:bold;
  }
  table {
    margin: 0;
  }  
  td {
  	padding: 5px 10px;
    text-align:center;
    font-size: 20px;
  }
</style>
</head>
<body>
<%
int year = 1919;
int month = 11;
Calendar cal = Calendar.getInstance();
cal.set(year, month-1, 1);
int day = cal.get(Calendar.DAY_OF_WEEK);
int start = cal.getActualMinimum(Calendar.DATE);
int end = cal.getActualMaximum(Calendar.DATE);

out.println("<p class='year_month'>"+ year + "년  " + month + "월</p>");
out.println("<HR>");

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