<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice21</title>
</head>
<body>
<p>경로만 표시된다</p>
<% out.println("<% request.setCharacterEncoding('UTF-8');을 추가해준다"); %>
<p>모두 영어로 출력된다</p>
<hr>
<p>opt=고른옵션&strID=입력한 아이디&strPW=입력한 비번</p>
<p>Tomcat의 server.xml에 URIEncoding 옵션을 추가해 준다.</p>
<p>모두 영어로 출력된다</p>
<hr>
<p>get방식</p>
<p>url맨 뒤에 입력정보가 뜬다</p>
</body>
</html>