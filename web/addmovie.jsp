<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>在线影视-添加影片</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/addmovie.css">
</head>
<body style="background-color: rgb(53, 63, 66)">
    <div id="nav">
        <div style="width: 30%;height:100%;float: left;">
            <div style="margin-top: 15px;margin-left: 50px">
                <a href="index.jsp" title="前往主页" target="_blank">
                    <img id="logoimg" height="36px" src="favicon.ico" alt="logo">
                    <b style="font-size: 25px;margin-bottom: 5px;vertical-align: middle">在线影视</b>
                </a>
            </div>
        </div>

        <div id="search" style="width: 40%">
            <h1 style="font-size: 35px;margin-top: 10px;vertical-align: middle;color: white">后台管理</h1>
        </div>

        <div id="btns" style="width: 30%;">
            <div class="btn" style="padding-top: 15px;padding-right: 10px">
                <img src="imgs/vip_user.png" style="vertical-align: middle;margin-right: 4px;width: 36px" alt="加载失败" title="管理员">
                <a href="GlyInfo" style="vertical-align: middle">${sessionScope.logingly.glyzh}</a>
                <a href="GlyLogout" style="vertical-align: middle">注销</a>
            </div>
        </div>
    </div>

    <div style="margin-top: 150px">
        <form action="Addmovie" method="post" class="smart-green" style="top: 500px">
            <h1>添加影片
                <span>Please fill all the texts in the fields.</span>
            </h1>
            <label>
                <span>影片名 :</span>
                <input type="text" name="ypmc" placeholder=" 请输入影片名"/>
            </label>
            <label>
                <span>影片地址 :</span>
                <input type="text" name="ypdz" placeholder=" 请输入影片地址"/>
            </label>

            <label>
                <span>封面地址 :</span>
                <input type="text" name="fmdz" placeholder=" 请输入影片封面地址"/>
            </label>

            <label>
                <span>主演 :</span>
                <input type="text" name="ypzy" placeholder=" 请输入影片主演"/>
            </label>

            <label>
                <span>观看权限 :</span>
                <select name="ypvip">
                    <option value="0">normal</option>
                    <option value="1">vip</option>
                </select>
            </label>
            <br>
            <label>
                <button type="submit" class="button">添加</button>
            </label>
        </form>
    </div>

</body>
</html>
