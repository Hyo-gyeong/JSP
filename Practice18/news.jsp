<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>news</title>
<style>
  .title{
    font-size: 35px;
    margin-top: 0;
  }
  li {
    font-size: 20px;
  }
  span {
   padding-bottom: 30px;
   border-bottom: 1px solid black;
  }
  .schedule {
    padding: 10px 0;
  }
</style>
</head>
<body>
<p class="title"><span>오늘의 일정</span></p>
<p class="schedule">
<% 
	String task1 = request.getParameter("TASK1");
	String task2 = request.getParameter("TASK2");
	if (task1.equals("")) 
		task1 = "No schedule";
	else if (task2.equals(""))
		task2 = "No schedule";
	out.println("<p>1. " + task1 + "<br>" + "2. " + task2 + "</p>");
%>
</body>
</html>