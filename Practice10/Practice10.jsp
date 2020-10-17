<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Practice10</title>
<style>
  table{
    border: 1px solid black;
    width: 700px;
    text-align: center;
  }
  td {
    border: 1px solid black;
    height: 40px;
    font-weight: bold;
  }
</style>
</head>
<body>
<%
out.println("<div align='center'>");
out.println("<table>");
out.println("<tr>");
String day = "일월화수목금토";
for (int i = 0; i < 7; i++){
	if (day.charAt(i) == '일')
		out.println("<td><font color='red'>" + day.charAt(i) + "</font></td>");
	else if (day.charAt(i) == '토')
		out.println("<td><font color='blue'>" + day.charAt(i) + "</font></td>");
	else
		out.println("<td>" + day.charAt(i) + "</td>");
}
out.println("</tr>");
  for (int i = 0; i < 5; i++){
  	out.println("  <tr>");
	for (int j = 0; j < 7; j++)
		out.println("\t<td> &nbsp; </td>");
	out.println("  </tr>");
  }
out.println("</table>");
out.println("</div>");
%>
</body>
</html>