<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application Object 2</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String session_id = request.getParameter("id");
session.setAttribute("ID", session_id);
out.println(session_id+"님 환영합니다!<br><br>");

if (session.getAttribute(session_id) == null){
	session.setAttribute(session_id, session.getId());
	out.println("세션ID : " + session.getAttribute(session_id)+"<br>");
}
else{
	out.println("세션ID : " + session.getAttribute(session_id)+"<br>");
}

String session_time = request.getParameter("time");
if (session_time == null)
	out.println("세션 지속시간 :  " + session.getMaxInactiveInterval()*60 + "초<br><br>");
else{
	session.setMaxInactiveInterval(Integer.parseInt(session_time));
	out.println("세션 지속시간 :  " + session.getMaxInactiveInterval()*60 + "초<br><br>");
}

Integer counter = (Integer)application.getAttribute("counter");
if (counter == null || counter == 0)
	counter = 1;
else
	counter++;

application.setAttribute("counter", counter);
out.println("오늘의 접속자수 :"+counter);
%>

</body>
</html>