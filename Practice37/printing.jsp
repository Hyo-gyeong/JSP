<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib tagdir="/WEB-INF/tags" prefix="ddwutag" %>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>printing</title>
</head>
<body>
<% String id = request.getParameter("id");
   session.setAttribute("id", id);%>
<ddwutag:greeting color="pink"/>
<ddwutag:greeting color="green"/>
</body>
</html>