<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Practice12</title>
<style>
  table {
    margin: auto;
    border: none;
    border-collapse:collapse;
  }
  td {
    width: 500px;
  }
  h1{
    text-align: center;
  }
</style>
</head>
<body>
<h1>include 지시어 연습</h1><br><hr>
<table>
  <tr>
	<td>
	  <jsp:include page="calendar.jsp" flush="true"/>
	</td>
	<td>
	  <jsp:include page="news.jsp" flush="true"/>
	</td>
  </tr>
</table>
</body>
</html>