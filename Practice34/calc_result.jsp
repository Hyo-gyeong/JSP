<!-- 20190975 신효경 -->
<!-- 최적 실행환경 : Chrome -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calc_result</title>
  <style>
  @font-face { 
    font-family: '62570체'; 
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/62570체.woff') format('woff'); 
    font-weight: normal; 
    font-style: normal; 
  }
  table {
    margin-left: auto;
    margin-right: auto;
    height: 100%;
  }
  .bg_blue {
    background-color: #34CBFC;
    height: 70px;
    font-family: '62570체'; 
    font-size: 40px;
  }
  .calc_btn {
    width: 200px;
    text-align: center;
  }
  .number{
    text-align:center;
  }
  div {
  	margin: auto;
    border: 1px solid black;
    width: 100px;
    height: 30px;
    text-align: center;
  }
  </style>
</head>
<body>
  <table>
    <tr>
      <th colspan=2 class="bg_blue">CalCuLaTor</th>
    </tr>
    <tr>
      <td><img src="image/cal.jpg" height=400 width=300></td>
      <td class="calc_btn">
      	<% 
      	String a = request.getParameter("num1");
      	int num1 = Integer.parseInt(a);
      	String op = request.getParameter("op"); 
      	int int_op = Integer.parseInt(op);
      	String b = request.getParameter("num2"); 
      	int num2 = Integer.parseInt(b);
      	String[] operator = {"+","-","*","/"};
      	
      	out.println("<div>"+a+"</div>");
      	out.println("<p>"+operator[int_op]+"</p>");	
      	out.println("<div>"+b+"</div>");
      	out.println("<p>=</p>");	
      	switch(request.getParameter("op")){
      	case "0":
      		out.println("<div>"+(num1 + num2)+"</div><br><br>");
      		break;
      	case "1":
      		out.println("<div>"+(num1 - num2)+"</div><br><br>");
      		break;
      	case "2":
      		out.println("<div>"+(num1 * num2)+"</div><br><br>");
      		break;
      	case "3":
      		out.println("<div>"+(num1 / num2)+"</div><br><br>");
      		break;
      	}
      	
      	%>
      </td>
    </tr>
    <tr>
      <td colspan=2 class="bg_blue"></td>
    </tr>
  </table>
</body>
</html>