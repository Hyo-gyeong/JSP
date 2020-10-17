<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>calendar</title>
<style>
  .included_table{
    border: 1px solid black;
    border-collapse: collapse;
    width: 400px;
    text-align: center;
  }
  .included_tr > td{
    border: 1px solid black;
    height: 50px;
    font-weight: bold;
  }
</style>
</head>
<body>
<div align="center">
<table class="included_table">
  <tr class="included_tr">
	<td><font color="red">일</font></td>
	<td>월</td>
	<td>화</td>
	<td>수</td>
	<td>목</td>
	<td>금</td>
	<td><font color="blue">토</font></td>
  </tr>
  <%
  for (int i = 0; i < 5; i++){
  	out.println("  <tr class='included_tr'>");
	for (int j = 0; j < 7; j++)
		out.println("\t<td> &nbsp; </td>");
	out.println("  </tr>");
  }
 	%>
</table>
</div>
</body>
</html>