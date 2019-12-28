<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>在线影视-添加影片</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body style="text-align: center">
<div style="float:left">
    <c:if test="${sessionScope.logingly!=null}">
        <a href="GlyInfo"><button>${sessionScope.logingly.glyzh}</button></a>
        <a href="GlyLogout"><button>注销</button></a>
    </c:if>
</div>
<div>
    <h1>添加影片</h1>
    <form action="Addmovie" method="post">
        <label>
            <input type="text" name="ypmc" placeholder="请输入电影名">
        </label><br>
        <label>
            <input type="text" name="ypdz" placeholder="请输入影片地址">
        </label><br>
        <label>
            <input type="text" name="fmdz" placeholder="请输入影片封面地址">
        </label><br>
        <label>
            <input type="text" name="ypzy" placeholder="请输入影片主演">
        </label><br>
        <label>
            <select name="ypvip">
                <option value="0">normal</option>
                <option value="1">vip</option>
            </select>
        </label><br>
        <input type="submit" name="submitbtn" value="添加">

    </form>
</div>

</body>
</html>
