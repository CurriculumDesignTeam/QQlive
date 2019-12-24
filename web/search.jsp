<%--
  Created by IntelliJ IDEA.
  User: fyz
  Date: 2019/12/24
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>搜索</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
    <link rel="stylesheet" href="css/index.css">
</head>
<body style="text-align: center">
<div>
    <form action="Search">
        <label>
            <input type="text" name="searchword">
        </label>
        <button type="submit">全网搜</button>
    </form>
    <table>
        <tr>
            <%
                StringBuilder searchresult=(StringBuilder) session.getAttribute("searchmovi");
                out.print(searchresult);
            %>
        </tr>
    </table>
</div>

</body>
</html>
