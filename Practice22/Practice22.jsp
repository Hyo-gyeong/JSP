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
id : <%= request.getParameter("id") %><br>
pw : <%= request.getParameter("pw") %><br>
gender : <%= request.getParameter("gender") %><br>
phone1 : <%= request.getParameter("phone1") %><br>
phone2 : <%= request.getParameter("phone2") %><br>
phone3 : <%= request.getParameter("phone3") %><br>
email : <%= request.getParameter("email") %><br>
birth : <%= request.getParameter("birth") %><br>
hobby : <%
     String[] interest = request.getParameterValues("interests");
    for(int i = 0 ; i < interest.length ; i++){
        out.println(interest[i]+"/");
    }
    %><br>
memo : <%= request.getParameter("memo") %><br>
<hr>
<h1>Processing Parameters</h1>
id : <%= request.getParameter("id") %><br>
pw : <%= request.getParameter("pw") %><br>
gender : <%
	String[] gNames = {"남", "여"};
	String gnd = request.getParameter("gender");
	int g = Integer.parseInt(gnd);
	out.println(gNames[g]);
	%><br>
phone1 : <%
		String[] telCompany = {"010", "011", "017", "070"};
		String tel = request.getParameter("phone1");
		int int_tel = Integer.parseInt(tel);
		out.println(telCompany[int_tel]);
		%><br>
phone2 : <%= request.getParameter("phone2") %><br>
phone3 : <%= request.getParameter("phone3") %><br>
email : <%= request.getParameter("email") %><br>
birth : <%= request.getParameter("birth") %><br>
hobby : <%
	String[] hobbyNames = {"뉴스", "맛집", "책", "영화", "여행"};
    String[] interest2 = request.getParameterValues("interests");
    for(int k = 0 ; k < interest2.length ; k++){
    	int interests = Integer.parseInt(interest2[k]);
        out.println(hobbyNames[interests]+"/");
    }
    %><br>
memo : <%= request.getParameter("memo") %><br>
</body>
</html>