<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr33.*"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean id="login" class="jspbook.pr33.LoginBean"  scope="page"/>
    <jsp:setProperty name="login" property="*"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addr_add</title>
<style>
*{
text-align:center;
}
</style>
</head>
<body>
<h2>등록내용</h2>
이름  : <%= login.getId() %><P>
패스워드 : <%= login.getPw() %><P>
이메일 : <%= login.getEmail() %><P>
성별 : <%= login.getGender() %><P>
생일 : <%= login.getBirth() %><P>
<hr>
<p><%= login.getId() %>씨는 
<% 
String gender;
if (login.getGender() == 0)
	out.println("남성이고,");
else
	out.println("여성이고,");
%>
<% 
if (login.isGrownUp())
	out.println("성인입니다.");
else
	out.println("미성인입니다.");
%>
</p>
</body>
</html>