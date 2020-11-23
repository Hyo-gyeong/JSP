<!--20190975 신효경-->
<!--최적 실행환경 : Chrome-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page03</title>
</head>
<body>
<% String src = "page_control_03.jsp";
response.sendRedirect("page_control_04.jsp?src="+src); %>
</body>
</html>