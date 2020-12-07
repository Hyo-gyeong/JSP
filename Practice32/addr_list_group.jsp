<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr32.*"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean id="am" class="jspbook.pr32.AddrManager" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addr_list_group</title>
<style>
table, td{
border: 1px solid black;
text-align:center;
}
table{
margin:auto;
}
.name{
width:100px;
}
.tel{
width: 150px;
}
.email{
width:200px;
}
.sex, .group{
width:50px;
}
</style>
</head>
<body>
<div align="center">
<h2>주소록(전체보기)</h2>
<HR>
<a href="addr_form.html">주소록 추가</a><BR><BR>
</div>
<table>
<tr>
	<td>이름</td>
	<td>전화번호</td>
	<td>이메일</td>
	<td>성별</td>
	<td>그룹</td>
</tr>
<% for(AddrBean ab : am.getAddrList()) {
	if(ab.getGroup().equals("가족")){%>
<tr>
	<td class="name"><%= ab.getUsername() %></td>
	<td class="tel"><%= ab.getTel() %></td>
	<td class="email"><%= ab.getEmail() %></td>
	<td class="sex"><%= ab.getSex() %></td>
	<td class="group"><%= ab.getGroup() %></td>
</tr>
<%}} %>
<% for(AddrBean ab : am.getAddrList()) {
	if(ab.getGroup().equals("친구")){%>
<tr>
	<td class="name"><%= ab.getUsername() %></td>
	<td class="tel"><%= ab.getTel() %></td>
	<td class="email"><%= ab.getEmail() %></td>
	<td class="sex"><%= ab.getSex() %></td>
	<td class="group"><%= ab.getGroup() %></td>
</tr>
<%}} %>
<% for(AddrBean ab : am.getAddrList()) {
	if(ab.getGroup().equals("직장")){%>
<tr>
	<td class="name"><%= ab.getUsername() %></td>
	<td class="tel"><%= ab.getTel() %></td>
	<td class="email"><%= ab.getEmail() %></td>
	<td class="sex"><%= ab.getSex() %></td>
	<td class="group"><%= ab.getGroup() %></td>
</tr>
<%}} %>
</table>
</body>
</html>