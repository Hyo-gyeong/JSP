<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice14</title>
</head>
<body>
<%
Calendar cal = Calendar.getInstance();
cal.set(2020, Calendar.OCTOBER, 1); //올해 이번달을 기준으로
int year = cal.get(Calendar.YEAR);
int month = cal.get(Calendar.MONTH);
int date = cal.get(Calendar.DATE);
int day = cal.get(Calendar.DAY_OF_WEEK);
int start = cal.getActualMinimum(Calendar.DATE);
int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);

String str_day = "일월화수목금토";
out.println("오늘은 "+ year + "년 " + (month+1) + "월 " + date + "일 " + str_day.charAt(day-1) + "요일 입니다.<BR>");
out.println("<BR>");
out.println("이번 달은 " + start + "부터 시작하여 " + end + "일에 끝납니다.<BR>");
out.println("<BR>");

cal.set(1997, Calendar.MAY, 16);
int startDay = cal.get(Calendar.DAY_OF_WEEK);
out.println("내 생일 1997년 5월 16일은 " + str_day.charAt(startDay-1) + "요일입니다.<BR>");

%>
</body>
</html>