<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>check</title>
</head>
<body>
<%
if (request.getParameter("action").equals("login")){
	if (request.getParameter("id") != null && request.getParameter("pw").equals("hatter")){
		session.setAttribute("user", request.getParameter("id"));
		response.sendRedirect("index.jsp");
	}
	else{
		response.sendRedirect("index.jsp");
	}
}
else{
	session.invalidate();		
	response.sendRedirect("index.jsp");
}
%>
</body>
</html>