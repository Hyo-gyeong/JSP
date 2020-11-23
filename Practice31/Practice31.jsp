<!-- 20190975 신효경 -->
<!-- 최적 실행환경 : Chrome -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="EUC-KR">
  <title>Practice31</title>
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
<%!
int[][] lectureType = {
{0, 1, 1, 0, 1}, // 1교시 – 0 : no class
{1, 0, 0, 0, 2}, // 2교시 – 1 : 전공필수
{0, 0, 2, 0, 4}, // 3교시 – 2 : 전공선택
{2, 3, 0, 3, 0}, // 4교시 – 3 : 교양
{0 ,0, 0, 2, 0}, // 5교시 - 4 : 자유선택
{0, 0, 0, 0, 0} // 6교시
};
int[][] consecutive = {
{1, 2, 1, 1, 1}, // 1교시
{2, 0, 1, 1, 1}, // 2교시
{0, 1, 1, 1, 4}, // 3교시
{2, 1, 1, 1, 0}, // 4교시
{0, 1, 1, 2, 0}, // 5교시
{1, 1, 1, 0, 0} // 6교시
};
int[][] lectureTitle = {
{-1, 4, 5, -1, 5}, // 1교시
{3, -1, -1, -1, 1}, // 2교시
{-1, -1, 1, -1, 7}, // 3교시
{0, 6, -1, 6, -1}, // 4교시
{-1, -1, -1, 2, -1}, // 5교시
{-1, -1, -1, -1, -1} // 6교시
};
%>
<p class="table_title">강의 시간표</p>
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
  String[] titleNames = {"웹프로그래밍", "운영체제", "소프트웨어프로그래밍", "데이터베이스개론","자료구조", "네트워크", "창의와감성", "사회봉사"};
  
  for (int i = 0; i < 6; i++){
	  out.println("<tr>");
	  out.println("<td class='left_column'>"+(i+1)+"</td>");
	  for (int j = 0; j < 5; j++){
		  if(lectureType[i][j] != 0 && lectureTitle[i][j] != -1){
			  out.println("<td rowspan='"+consecutive[i][j]+"' class='mandatory"+lectureType[i][j]+"'>"+titleNames[lectureTitle[i][j]]+"</td>");		 
		  }
		  else if (consecutive[i][j] == 0){
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
</body>
</html>