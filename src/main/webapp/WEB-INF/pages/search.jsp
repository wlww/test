<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>MAIN PAGE</title>
    <style type="text/css">
        #c0 {
            margin: auto;
            height: 20px;
            width: 900px;
        }

        #c2 {
            margin: auto;
            height: 120px;
            width: 900px;
            padding-top: 20px;
        }

        #c1 {
            margin: auto;
            height: 20px;
            width: 900px;
        }

    </style>
</head>

<body>
<div id="c1">
    <form action="/main" method="get">
        영화제목: <input type="text" name="searchTitle" value="" style="width:400px; height:20px;"/><br/>
        배우: <input type="text" name="searchActor" value="" style="width:400px; height:20px;"/>
        <input type="submit" value="검색" alt="search"/></a>
    </form>
</div>
<p/>
<c:forEach var="film" items="${filmlist}" varStatus="status">
    <div id="c2">
        <a href="/searchview?id=${film.film_id}">
            <table width="600" border="1">
                <tr>
                    <td width="50" height="30">
                        <div align="center">제목</div>
                    </td>
                    <td width="300" height="30">&nbsp;${film.title}</td>
                    <td width="50" height="30">
                        <div align="center">개봉일</div>
                    </td>
                    <td width="200" height="30">&nbsp;${film.release_year}</td>
                </tr>
                <tr>
                    <td width="50" height="30">
                        <div align="center">배우</div>
                    </td>
                    <td width="300" height="30">&nbsp;${film.title}</td>
                    <td width="50" height="30">
                        <div align="center">장르</div>
                    </td>
                    <td width="200" height="30">&nbsp;${film.title}</td>
                </tr>
                <tr>
                    <td width="50" height="30">
                        <div align="center">감독</div>
                    </td>
                    <td width="300" height="30">&nbsp;${film.title}</td>
                    <td width="50" height="30">
                        <div align="center">등급</div>
                    </td>
                    <td width="200" height="30">&nbsp;${film.rating}</td>
                </tr>
            </table>
        </a>
    </div>
</c:forEach>
</body>
</html>