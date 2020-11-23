<!--20190975 신효경-->
<!--최적실행환경 Chrome-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<style>
table, tr{
width : 90%;
height: 100%;
}
td{
width:50%;
}
h1{
text-align:center;
}
</style>
</head>
<body>
<h1>Alice in Wonderland</h1>
<table class="center">
	<tr>
		<td><jsp:include page="viewer.jsp" flush="true"/></td>
		<td><jsp:include page="login.jsp" flush="true"/></td>
	</tr>
</table>

</body>
</html>