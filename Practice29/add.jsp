<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add</title>
<style>
*{
text-align: center;
}
</style>
</head>
<body>
<h1>주소록</h1>
<hr><br>
<% 
String name = request.getParameter("name");
String number = request.getParameter("number");
String info = name+", "+number;

ArrayList<String> addr = (ArrayList<String>)application.getAttribute("addrbook");

if (addr == null){
	addr = new ArrayList<String>();
}

addr.add(info);
application.setAttribute("addrbook", addr);

if (addr != null){
	int i = 1;
	for (String a : addr){
		out.println("<span>"+i+"."+a+"<span><br>");
		i++;
	}
}

%>
</body>
</html>