<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application Object 1</title>
<style>
.name{
 margin-left: 120px;
}
</style>
</head>
<body>
<form method=post action="Application Object 2.jsp">
아이디 : <input class="name" name=id type=text><br>
원하는 세션지속시간(분): <input name=time type=text><br>
<input type="submit" value="로그인">
<input type="reset" value="취소">
</form>
</body>
</html>