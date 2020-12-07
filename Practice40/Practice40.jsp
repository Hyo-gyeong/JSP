<!-- 20190975 신효경 -->
<!-- 최적 실행환경 : Chrome -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
id : ${param.id}<br>
pw : ${param.pw}<br>
gender : ${param.gender}<br>
phone1 : ${param.phone1}<br>
phone2 : ${param.phone2}<br>
phone3 : ${param.phone3}<br>
email : ${param.email}<br>
birth : ${param.birth}<br>
hobby : 
<%
String[] interest = request.getParameterValues("interests");
if (interest != null)
for(int i = 0 ; i < interest.length ; i++){
    out.println(interest[i]+"/");
}
%>
<br>
memo : ${param.memo}<br>
<hr>
<h1>Processing Parameters</h1>
id : ${param.id}<br>
pw : ${param.pw}<br>
gender : <%
	String[] gNames = {"남", "여"};
	String gnd = request.getParameter("gender");
	if (gnd != null){
	int g = Integer.parseInt(gnd);
	out.println(gNames[g]);}
	%><br>
phone1 : <%
		String[] telCompany = {"010", "011", "017", "070"};
		String tel = request.getParameter("phone1");
		if (tel != null){
		int int_tel = Integer.parseInt(tel);
		out.println(telCompany[int_tel]);}
		%><br>
phone2 : ${param.phone2}<br>
phone3 : ${param.phone3}<br>
email : ${param.email}<br>
birth : ${param.birth}<br>
hobby : <%
	String[] hobbyNames = {"뉴스", "맛집", "책", "영화", "여행"};
    String[] interest2 = request.getParameterValues("interests");
    if (interest2 != null){
    for(int k = 0 ; k < interest2.length; k++){
    	int interests = Integer.parseInt(interest2[k]);
        out.println(hobbyNames[interests]+"/");
    }}
    %><br>
memo : ${param.memo}<br>
</body>
</html>