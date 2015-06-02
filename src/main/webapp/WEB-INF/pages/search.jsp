<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>MAIN PAGE</title>
    <style type="text/css">
        #h1 {
            margin: auto;
            height: 100px;
            width: 900px;
        }
        #s1 {
            margin: auto;
            height: 110px;
            width: 890px;
            padding-top: 20px;
            padding-left: 10px;
            font-family: "나눔고딕", "나눔명조", "맑은 고딕", "굴림", "굴림체";
        }
        #c1 {
            margin: auto;
            height: 50px;
            width: 900px;
        }
        #s1 table tr td {
            text-align: left;
            font-family: "나눔고딕", "나눔명조", "맑은 고딕", "굴림", "굴림체";
        }
        #s1 table tr td div {
            font-weight: bold;
            font-family: "나눔고딕", "나눔명조", "맑은 고딕", "굴림", "굴림체";
            font-size: 14px;
        }
    </style>
</head>

<body>
<div id="h1"></div>
<div id="c1">
    <form action="/main" method="get">
        영화제목: <input type="text" name="searchTitle" value="" style="width:400px; height:20px;"/><br/>
        배우: <input type="text" name="searchActor" value="" style="width:400px; height:20px;"/>
        <input type="submit" value="검색" alt="search"/>
    </form>
</div>
<p/>
<c:forEach var="film" items="${filmlist}" varStatus="status">
    <div id="s1">
        <a href="/searchview?id=${film.film_id}">
            <table width="706" height="95" frame="box" border="2" rules="none">
                <tr>
                    <td width="60"><div align="center">제목</div></td>
                    <td width="279">&nbsp;${film.title}</td>
                    <td width="60"><div align="center">개봉일</div></td>
                    <td width="279">&nbsp;${film.release_year}</td>
                </tr>
                <tr>
                    <td><div align="center">출연</div></td>
                    <td colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td><div align="center">장르</div></td>
                    <td>&nbsp;</td>
                    <td><div align="center">등급</div></td>
                    <td>&nbsp;${film.rating}</td>
                </tr>
            </table>
        </a>
    </div>
</c:forEach>
</body>
</html>