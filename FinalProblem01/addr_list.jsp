<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.final01.*"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean id="am" class="jspbook.final01.AddrManager" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addr_list</title>
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
.sex, .group, .favorite{
width:50px;
}
.pagination{
text-align:center;
margin-top:20px;
}
.pagination > a{
text-decoration: none;
}
</style>​
</head>
<body>
<% 
String Page = request.getParameter("page");
int i;
int page_count;
if (Page == null) {
	page_count = 1;
	i = 0;
}
else{
	page_count = Integer.parseInt(Page);
	i = page_count-1;
}
%>
<div align="center">
<h2>주소록(전체보기)</h2>
<HR>
<a href="addr_form.html">주소록 추가</a>&emsp;<a href="addr_list_favorite.jsp">즐겨찾기 목록 보기</a><BR><BR>
</div>
<table>
<tr>
	<td>이름</td>
	<td>전화번호</td>
	<td>이메일</td>
	<td>성별</td>
	<td>그룹</td>
</tr>
<% 
int k = 0;
for(AddrBean ab : am.getAddrList()) {
	if (k == i*2 || k == i*2+1){
	%>
	<tr>
		<td class="name"><%= ab.getUsername() %></td>
		<td class="tel"><%= ab.getTel() %></td>
		<td class="email"><%= ab.getEmail() %></td>
		<td class="sex"><%= ab.getSex() %></td>
		<td class="group"><%= ab.getGroup() %></td>
	</tr>
	<%}
	k++;
}%>
</table>
<div class="pagination">
<% 
for (int j = 1; j <= (am.getAddrList().size()+1)/2; j++) {
	if (j == page_count){%>
	<span><%=j %></span>
	<%}else{%>
	<a href="addr_list.jsp?page=<%=(j)%>"><%=j %></a>
<% }}%>
</div>
</body>
</html>