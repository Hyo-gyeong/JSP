<!-- 20190975 신효경 -->
<!-- 최적 실행환경 : Chrome -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice26</title>
</head>
<body>
1.현재 웹 브라우저에서 새 탭을 열어 session01을 다른 실행해도 id는 같다.
2.같은 웹 브라우저의 새창을 열어도 id는 같다.
3.현재 실행하고 있는 브라우저 외의 브라우저에서 실해하면 id가 달라진다.
4.브라우저를 모두 닫고 새로 연 후 실행하면 id가 달라진다. 
->모두 session.getId()를 출력해서 비교해보면 알 수 있다. 
</body>
</html>