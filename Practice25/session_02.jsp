<!-- 20190975 신효경 -->
<!-- 최적 실행환경 : Chrome -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Object: 02</title>
</head>
<body>
<p><%= request.getParameter("username") %>님 환영합니다.</p>
<span>세션 ID : <%= session.getId() %></span><br>
<span>세션 지속시작(default) : <%= session.getMaxInactiveInterval() %>초</span><br><br>
<a href="session_03.jsp" target="blank">session_03.jsp로 가기</a>
</body>
</html>