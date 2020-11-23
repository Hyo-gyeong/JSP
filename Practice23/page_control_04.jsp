<!--20190975 신효경-->
<!--최적 실행환경 : Chrome-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page04</title>
</head>
<body>
<%
String username = "null", password = "", src = "";

Enumeration<String> ve = request.getParameterNames();
while (ve.hasMoreElements()) {
	String vs = ve.nextElement();
	if (vs.equals("username"))
		username = request.getParameter(vs);
	else if (vs.equals("src"))
		src = request.getParameter(vs);
	else
		password = request.getParameter(vs);
}

out.println("<span>"+src+"에서 전달된 내용입니다</span><br>");
out.println("<span>page_control_04.jsp에서 출력됩니다.</span><br>");
out.println("<hr>");

out.println("<span>념겨받은 파라미터들</span><br>");
Enumeration<String> e = request.getParameterNames();
while (e.hasMoreElements()) {
	String s = e.nextElement();
	out.println(s+" : "+ request.getParameter(s)+"<br>");
}
out.println("<hr>");
out.println("<p>안녕하세요, "+username+"님. 반갑습니다.</p>");
%>
<hr>
</body>
</html>