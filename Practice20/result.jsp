<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result</title>
</head>
<body>
<p>전달된 파라미터 이름들</p>
<%
Enumeration<String> e = request.getParameterNames();
while(e.hasMoreElements()){
	String s = e.nextElement();
	out.println(s+"<br>");
}
%>
<hr>
타입 : <%= request.getParameter("opt") %><br>
아이디 : <%= request.getParameter("strID") %><br>
패스워드 : <%= request.getParameter("strPW") %>

</body>
</html>