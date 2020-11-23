<!-- 20190975 신효경 -->
<!-- 최적 실행환경 : Chrome -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
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
      	<form method=post action="calc_result.jsp">
      	<input class="number" type="text" name="num1" value="0"><br><br>
      	<select name="op">
      		<option value=0 selected>+</option>
      		<option value=1>-</option>
      		<option value=2>*</option>
      		<option value=3>/</option>
      	</select><br><br>
      	<input class="number" type="text" name="num2" value="0"><br><br>
      	<button type="submit">=</button><br><br>
      	<input class="number" disabled/>
      	</form>
      </td>
    </tr>
    <tr>
      <td colspan=2 class="bg_blue"></td>
    </tr>
  </table>
</body>
</html>