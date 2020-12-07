<!-- 20190975 신효경 -->
<!-- 최적 실행환경 : Chrome -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <meta charset="UTF-KR">
  <title>Sign In</title>
  <style>
    table {
      margin: auto;
      border: 1px solid black;
	  border-collapse: collapse;
    }
    th, 
	td {
	  height: 25px;
	  border: 1px solid black;
	  border-collapse: collapse;
	}
	.title {
	  background-color: #ECECEC;
	  font-weight: bold;
	  text-align: center;
	  width: 70px;
	}
	.image_btn {
	  vertical-align: middle;
	}
	.ph_number {
	  width: 45px;
	}
	.email {
	  width: 250px;
	}
  </style>
</head>
<body>
<form action="register.jsp" method=post>
  <table>
    <tr>
      <th colspan="2" class="title">회원가입</th>  
    </tr>
    <tr>
      <td class="title">아이디</td>
      <td>
        <input name="id" type="text" maxlength=20>
        <input type="image" class="image_btn" src="image/check.gif">
      </td>
    </tr>
    <tr>
      <td class="title">패스워드</td>
      <td>
        <input name="pw" type="password">
      </td>
    </tr>
    <tr>
      <td class="title">성별</td>
      <td>
        <input name="gender" type="radio" name="sex" value="0">남
        <input name="gender" type="radio" name="sex" value="1" checked>여  
      </td>
    </tr>
    <tr>
      <td class="title">국적</td>
      <td>
        <input name="nation" type="text" value="대한민국">
        <input name="nation" type="button" value="국적변경">
      </td>
    </tr>
    <tr>
      <td class="title">핸드폰</td>
      <td>
        <select name=phone>
          <option value=1 selected>010</option>
		  <option value=2>011</option>
		  <option value=3>017</option>
		  <option value=4>070</option>
		<option value=5>080</option>
		</select>
		- <input name=num1 type="text" class="ph_number" maxlength=4>
		- <input name=num2 type="text" class="ph_number" maxlength=4>
      </td>
    </tr>
    <tr>
      <td class="title">이메일</td>
      <td>
        <input name=email type="text" class="email">
      </td>
    </tr>
    <tr>
      <td class="title">생일</td>
      <td>
        <input name=birth type="date">
      </td>
    </tr>
    <tr>
      <td class="title">관심분야</td>
      <td>
        <input type="checkbox" name="interests" value="1">뉴스
        <input type="checkbox" name="interests" value="2" checked>맛집
        <input type="checkbox" name="interests" value="3">책
        <input type="checkbox" name="interests" value="4">영화
        <input type="checkbox" name="interests" value="5">여행
      </td>
    </tr>
    <tr>
      <td class="title">가입인사</td>
      <td><textarea cols="50" rows="5" placeholder="회원들에게 간단한 가입인사를 남겨주세요."></textarea></td>
    </tr>
    <tr>
      <td class="title">증명사진</td>
      <td>
        <input type="file">
      </td>
    </tr>
    <tr>
      <td colspan="2" class="title">
        <button type="submit" value="가입하기">가입하기</button>
        <button type="reset" value="다시작성">다시작성</button>
      </td>
    </tr>
  </table>
</form>
</body>
</html>