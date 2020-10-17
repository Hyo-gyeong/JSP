<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Practice11</title>
<style>
  table, td {
    margin: auto;
    border: 1px solid black;
  }
  td {
    padding-left: 10px;
    width: 100px;
    height: 210px;
  }
  h1 {
    text-align: center;
  }
</style>

</head>
<body>
<%
out.println("<h1>구구단 출력</h1><BR><HR>");
out.println("<table>");
int num = 2;
for (int i = 0; i < 2; i++){
	out.println("<tr>");
	for (int k = 0; k < 4; k++){
		out.println("<td>");
		for (int j = 1; j <= 9; j++)
			out.println(num + " * " + j + " = " + (num*j) + "<BR>");
		num++;
		out.println("</td>");
	}
	out.println("</tr>");
}
out.println("</table>");
%>
</body>
</html>