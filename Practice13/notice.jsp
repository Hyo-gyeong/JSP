<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    table {
      margin: auto;
      text-align: center;
      width: 600px;
    }
    .header_img {
      width: 100%;
    }
    .table-header {
      background-color: #FFDAB9;
      font-weight: bold;
      height: 40px;
    }
    .table-body {
      background-color: #FFEFD5;
      font-weight: bold;
      height: 300px;
    }
  </style>
</head>
<body>
  <img class="header_img" src="image/eclass_title.jpg">
  <table>
    <tr>
      <td class="table-header">오류가 발생했습니다.</td>
    </tr>
    <tr>
      <td class="table-body">
        <br><br><img class="flower" src="image/flower.gif">
        <p>오류 발생시간 : <%=new java.util.Date() %></p>
        <p>최대한 빨리 조치하겠습니다.</p>
      </td>
    </tr>
  </table>

</body>
</html>