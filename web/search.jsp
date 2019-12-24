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
