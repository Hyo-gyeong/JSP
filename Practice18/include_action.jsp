<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice18</title>
<style>
  .head_title {
    font-size: 40px;
    text-align:center;
  }
  .center {
    margin-left: auto;
    margin-right: auto;
  }
  td {
    padding: 5px 20px;
    font-size: 20px;
    width: 300px;
  }
</style>
</head>
<body>
<p class="head_title">Include Action Practice</p>
<table class="center">
  <tr>
    <td>
	    <jsp:include page="calendar.jsp" flush="true">
	    	<jsp:param value="2017" name="YEAR"/>
	    	<jsp:param value="10" name="MONTH"/>
	    </jsp:include>
    </td>
    <td>
    	<jsp:include page="news.jsp" flush="true">
    		<jsp:param value="" name="TASK1"/>
    		<jsp:param value="Homework" name="TASK2"/>
    	</jsp:include>
    </td>
  </tr>
</table>
</body>
</html>