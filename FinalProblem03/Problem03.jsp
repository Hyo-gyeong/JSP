<!-- 20190975 신효경 -->
<!-- 최적 실행환경 : Chrome -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.final03.*"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean id="lb" class="jspbook.final03.LectureBean" scope="request"/>
	<jsp:setProperty name="lb" property="*"/>
	<jsp:useBean id="lm" class="jspbook.final03.LectureManager" scope="session"/>
	<% lm.add(lb);%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice30</title>
<style>
  	* {
  	  text-align: center;
  	}
    .table_title {
      font-weight: bold;
    }
    table {
      margin: auto;
      border: 1px solid black;
	  border-collapse: collapse;
    }
	th, 
	td {
	  width: 80px;
	  height: 50px;
	  border: 1px solid black;
	  border-collapse: collapse;
	}
	th,
	.period {
	  font-weight: bold;
	  font-size: 20px;
	}
	td {
	  font-size: 13px;
	}
	.mandatory1 {
	  background-color: #FFE08C; 
	}
	.mandatory2{
	  background-color: #B2CCFF;
	}
	.mandatory3 {
	  background-color: #BDBDBD;
	}
</style>
</head>

<body>
<br>
<form action="Problem03.jsp" method=post>
	과목 타입 : 
	<select name="type">
	<option value=1>전공필수</option>
	<option value=2>전공선택</option>
	<option value=3>교양</option>
	<option value=4>자유선택</option>
	<option valule=5>기타</option>
	</select>
	
	과목명 : 
	<select name="title">
	<option value=0>웹프로그래밍</option>
	<option value=1>운영체제</option>
	<option value=2>소프트웨어프로그래밍</option>
	<option value=3>데이터베이스개론</option>
	<option value=4>자료구조</option>
	<option value=5>네트워크</option>
	<option value=6>창의와감성</option>
	<option value=7>사회봉사</option>
	</select>
	
	요일 : 
	<select name="day">
	<option value=0>월</option>
	<option value=1>화</option>
	<option value=2>수</option>
	<option value=3>목</option>
	<option value=4>금</option>
	</select>
	
	시간 : 
	<select name="time">
	<option value=1>1</option>
	<option value=2>2</option>
	<option value=3>3</option>
	<option value=4>4</option>
	<option value=5>5</option>
	<option value=6>6</option>
	</select>
	
	연강여부 : 
	<select name="consecutive">
	<option value=1>1</option>
	<option value=2>2</option>
	<option value=3>3</option>
	<option value=4>4</option>
	<option value=5>5</option>
	<option value=6>6</option>
	</select>
	<input type="submit" value="등록">
</form><br>
<hr>
<table>
  <tr>
  	<th>2학년</th>
  	<th>월</th>
  	<th>화</th>
  	<th>수</th>
  	<th>목</th>
  	<th>금</th>
  </tr>
<%
if (lb.getType() == -1)
	lm.initMatrix();
else
	lm.buildMatrix();	
	
String[] titleNames = { "웹프로그래밍", "운영체제", "소프트웨어프로그래밍", "데이터베이스개론","자료구조", "네트워크", "창의와감성", "사회봉사" };

for (int i = 0; i < 6; i++){
	  out.println("<tr>");
	  out.println("<td class='left_column'>"+(i+1)+"</td>");
	  for (int j = 0; j < 5; j++){
		  if((lm.getTypeMatrix())[i][j] != 0 && (lm.getTitleMatrix())[i][j] != -1){
			  out.println("<td rowspan='"+(lm.getSpanMatrix())[i][j]+"' class='mandatory"+(lm.getTypeMatrix())[i][j]+"'>"+titleNames[(lm.getTitleMatrix())[i][j]]+"</td>");		 
		  }
		  else if ((lm.getSpanMatrix())[i][j] == 0){
			  continue;
		  }
		  else{
			  out.println("<td>&nbsp;</td>");
		  }
	  }
	  out.println("</tr>");
}
%>
</table>
<br><br>
<hr>
<%
for (LectureBean lbean : lm.getLectureList()){%>
<%= lbean.toString() %><BR>
<%} %>
</body>
</html>