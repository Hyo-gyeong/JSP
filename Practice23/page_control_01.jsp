<!--20190975 신효경-->
<!--최적 실행환경 : Chrome-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page01</title>
</head>
<body>
<form method="post" action="page_control_02.jsp">
아이디 :  <input type="text" name="username">
비밀번호 : <input type="text" name="password">
<button type=submit>foward 전송</button>
</form><br>
<form method=post action="page_control_03.jsp">
아이디 :  <input type="text" name="username">
비밀번호 : <input type="text" name="password">
<button type=submit>snedRedirect 전송</button>
</form><br>
</body>
</html>