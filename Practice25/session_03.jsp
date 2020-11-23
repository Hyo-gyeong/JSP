<!-- 20190975 신효경 -->
<!-- 최적 실행환경 : Chrome -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Object: 03</title>
</head>
<body>
<%
long last = session.getLastAccessedTime() / 1000;
long create = session.getCreationTime() / 1000;
long second = (last - create);

out.println("<p>세션이 시작된 후"+second+"초가 지났습니다.</p>");
%>
</body>
</html>