<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<style>
form{
text-align:center;
}
.btn{
margin-right:180px;
}
</style>
</head>
<body>
<%
String name = (String)session.getAttribute("user");
if (name == null){
	out.println("<form action='checker.jsp' method=post>"+
			"아이디 : <input class='center' type='text' name='id'><br><br>"+
			"비밀번호 : <input class='center' type='password' name='pw'><br><br>"+
			"<input class='btn' type='submit' value='로그인' style='text-align:left;'>"+
			"<input type='hidden' name='action' value='login'></form>");
	}
else{
	out.println("<p style='margin-left:150px;'>"+name+"님 환영합니다!<br><br>"+
				"<form action='checker.jsp' method=post><input class='btn' type='submit' value='로그아웃' style='text-align:left;></p>"+
				"<input type='hidden' name='action' value='logout'></form>");
}
%>
</body>
</html>