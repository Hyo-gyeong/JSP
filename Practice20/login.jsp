<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!-- 20190975 신효경 -->
<!-- 최적 실행환경 : Chrome -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
  <title>Insert title here</title>
  <style>
    .title {
      width: 100%;
    }
    .login {
      text-align: center;
      font-size: 30px;
      font-weight: bold;
    }
    .logo {
      width: 350px;
      height: 250px;
    }
    table {
      margin: auto; <!--가운데 정렬-->
    }
    .selection {
      margin-left: 85px;
    }
    .id > input,
    .pwd > input {
      background-color: #FFFF99;
      border: none;
      box-shadow: inset 1px 1px 1px 1px #959595;
      margin-left: 35px;
    }
    .pwd > input {
      margin-left: 20px;
    }
    .info,
    .id,
    .pwd {
      font-weight: bold;
    }
    .btn {
      margin-top: 20px;
    }
  </style>
</head>
<body>
  <img class="title" src="img/eclass_title.jpg">
  <p class="login">로그인</p>
  <hr>
  <table>
  <tr>
    <td>
      <img class="logo" src="img/eclass_logo.png">
    </td>
    <td>
      <form name="frm1" method="POST" action="result.jsp">
        <p class="info">회원님의 아이디와 비밀번호를 정확히 입력하세요.</p>
        <select name="opt" class="selection">
          <option value="학부생" selected>학부생</option>
          <option value="대학원생">대학원생</option>
  	  	  <option value="교직원">교직원</option>
	    </select><br>
        <p class="id">아이디<input type="text" name="strID" size=20 maxlength=20 ><br></p>
        <p class="pwd">비밀번호<input type="password" name="strPW" size=20 maxlength=20><br></p>
        <p class="btn"><input type="submit" value="로그인">
        <input type="submit" value="가입하기" onclick="document.location='member2.html'"></p>
      </form>
    </td>
  </tr>
  </table>
</body>
</html>