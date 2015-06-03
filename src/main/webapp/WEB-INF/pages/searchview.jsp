<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2015-05-27
  Time: 오전 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
  <style type="text/css">
    #h {
      height: 400px;
      width: 850px;
      font-family: "나눔고딕", "나눔명조", "맑은 고딕", "굴림", "굴림체";
      text-align: justify;
      font-size: 14px;
      border-top-width: thin;
      border-top-style: solid;
      border-top-color: gray;
      border-bottom-width: thin;
      border-bottom-style: solid;
      border-bottom-color: gray;
      margin-top: 20px;
      margin-right: auto;
      margin-bottom: auto;
      margin-left: auto;
    }
    #h table tr td div {
      font-weight: bold;
      font-family: "나눔고딕", "나눔명조", "맑은 고딕", "굴림", "굴림체";
      font-size: 16px;
    }
  </style>
</head>
<body>
<div id="h">
  <table width="850" height="400"  frame="void"  rules="rows" bordercolor="gray">
    <tr >
      <td height="50" colspan="2" ><div align="center">제목</div></td>
      <td colspan="6">${film.title}</td>
    </tr>
    <tr>
      <td height="50" colspan="2"><div align="center">개봉일</div></td>
      <td width="259">ㅇㅇㅇ</td>
      <td width="95"><div align="center">장르</div></td>
      <td width="124">ㅇㅇㅇ</td>
      <td width="95"><div align="center">등급</div></td>
      <td colspan="2">${film.rating}</td>
    </tr>
    <tr>
      <td height="50" colspan="2"><div align="center">출연</div></td>
      <td colspan="6">ㅇㅇㅇ</td>
    </tr>
    <tr>
      <td height="50" colspan="2"><div align="center">주요정보</div></td>
      <td height="50" colspan="6">&nbsp;</td>
    </tr>
    <tr>
      <td width="56" height="186" align="left" valign="top"></td>
      <td height="186" colspan="6" align="left" valign="top"><br />${film.description}</td>
      <td width="14" align="left" valign="top">&nbsp;</td>
    </tr>
  </table>
</div>
</body>
</html>
