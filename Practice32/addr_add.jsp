<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr32.*"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean id="addr" class="jspbook.pr32.AddrBean"/>
    <jsp:setProperty name="addr" property="*"/>
    <jsp:useBean id="am" class="jspbook.pr32.AddrManager" scope="application"/>
    <% am.add(addr); %>
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
이름  : <jsp:getProperty name="addr" property="username"/><P>
전화번호 : <%= addr.getTel() %><P>
이메일 : <%= addr.getEmail() %><P>
성별 : <%= addr.getSex() %><P>
그룹 : <%= addr.getGroup() %><P>
<hr>
<a href="addr_list.jsp">전체 목록 보기</a>&emsp;&emsp;
<a href="addr_list_group.jsp">그룹별 목록 보기</a>
</body>
</html>