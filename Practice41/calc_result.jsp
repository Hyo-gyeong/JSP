<!-- 20190975 신효경 -->
<!-- 최적 실행환경 : Chrome -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr41.*"%>
<jsp:useBean id="cl" class="jspbook.pr41.Calculator" scope="session"/>
<jsp:setProperty name="cl" property="*"/>
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
    height: 25px;
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
      <div>${cl.op1}</div>
      <% 
      	String[] operator = {"+","-","*","/"};
      	int op = Integer.parseInt(request.getParameter("operator"));
      	out.println("<p>"+operator[op]+"</p>");
      	%>
      <div>${cl.op2}</div>
      <p>=</p>
    	<%	
    	switch(op){
    	case 0:%>
    		<div>${cl.op1+cl.op2}</div>
    	<%	break;
    	case 1:%>
    		<div>${cl.op1-cl.op2}</div>
    	<%	break;
    	case 2:%>
    		<div>${cl.op1*cl.op2}</div>
    	<%	break;
    	case 3:%>
    		<div>${cl.op1/cl.op2}</div>
    	<%	break;
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