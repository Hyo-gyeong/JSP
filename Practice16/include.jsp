<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include action</title>
<style>
  *{
    text-align:center;
  }
  .title {
    font-size:40px;
    font-weight:bold;
  }
</style>
</head>
<body>
<p class="title">include 액션 연습</p>
<hr>
<jsp:include page="greeting.jsp" flush="true">
<jsp:param name="name" value="Dongduk University"/>
<jsp:param name="date" value="2011/04/05"/>
</jsp:include>
</body>
</html>