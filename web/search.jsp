<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>在线影视-搜索结果</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
    <link rel="stylesheet" href="css/index.css">
</head>
<body style="text-align: center">
<div>

    <div id="nav">

        <div style="width: 20%;height:100%;float: left;">
            <div style="margin-top: 15px;margin-left: 50px">
                <a href="#">
                    <img id="logoimg" height="36px" src="favicon.ico" alt="logo">
                    <b style="font-size: 25px;margin-bottom: 5px;vertical-align: middle">在线影视</b>
                </a>
            </div>
        </div>

        <div id="search">
            <form action="Search" id="searchForm">
                <label>
                    <input id="searchInput" name="searchword" type="text" placeholder="搜片名/主演/类型">
                </label>
                <button id="searchBtn" type="submit" class="searchBtn">全网搜</button>
            </form>
        </div>

        <div id="btns">
            <div class="btn" style="padding-top: 15px;padding-right: 10px">
                <c:if test="${sessionScope.loginuser==null}">
                    <img src="imgs/vip.png" style="opacity:0;vertical-align: middle;margin-right: 4px;width: 36px" alt="加载失败">
                    <a href="login.jsp" style="vertical-align: middle">登录</a>
                    <a href="register.jsp" target="_blank" style="vertical-align: middle">注册</a>
                </c:if>
                <c:if test="${sessionScope.loginuser!=null}">
                    <c:if test="${sessionScope.loginuser.yhvip}">
                        <img src="imgs/vip.png" style="vertical-align: middle;margin-right: 4px;width: 36px" alt="加载失败" title="尊享VIP">
                    </c:if>
                    <c:if test="${!sessionScope.loginuser.yhvip}">
                        <a id="vip" href="" target="_blank">
                            <img src="imgs/vip.png" style="opacity: 0.4; vertical-align: middle;margin-right: 4px;width: 36px" alt="加载失败" title="开通VIP">
                        </a>
                    </c:if>
                    <a href="MyInfo" target="_blank" style="vertical-align: middle">${sessionScope.loginuser.yhnc}</a>
                    <a href="Logout" style="vertical-align: middle">注销</a>
                </c:if>
            </div>
        </div>
    </div>

    <table style="margin: 0 auto;">
        <c:forEach var="item" items="${sessionScope.searchmovie}" varStatus="status">
            <c:if test="${status.index%7==0}">
                <tr>
            </c:if>

            <td>
                <c:if test="${item.ypvip}">
                    <img src="imgs/vip.png" style="position: absolute;margin-left: 192px" alt="加载失败" title="VIP专享影视">
                </c:if>
                <div style="margin: 10px">
                    <a href="JudgeVip?selectmovieid=${item.ypid}" target="_blank" onclick="function x() {
                      ${sessionScope.keySet()}
                    }">
                        <img width="100%" src="${item.fmdz}" alt="图片加载失败" style="border-radius: 6px">
                        <p>${item.ypmc}</p>
                        <p class="wrap" title="${item.ypzy}">
                                ${item.ypzy}
                        </p>
                    </a>
                </div>
            </td>
            <c:if test="${(status.index+1)%7==0}">
                </tr>
            </c:if>
        </c:forEach>
    </table>
</div>

</body>
</html>
