<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>greeting message</title>
<style>
	.greeting_title {
	    font-size: 25px;
	    font-weight:bold;
  	}
</style>
</head>
<body>
<p class="greeting_title">greeting.jsp에서 출력한 메시지입니다.</p>
<p><%= request.getParameter("name")%>님  환영합니다.<br>
오늘은 <%= request.getParameter("date")%>입니다.</p>
</body>
</html>