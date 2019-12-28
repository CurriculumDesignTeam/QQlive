<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="yp" class="bean.Yp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>正在播放</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
    <link rel="stylesheet" href="css/play.css">
</head>
<body>

<c:if test="${sessionScope.selectmovie!=null}">
    <h1 style="text-align:center">${sessionScope.selectmovie.ypmc}</h1>

<%--    <object data="https://jx.688ing.com/?search=${sessionScope.selectmovie.ypdz}"  width="1440" height="80%"></object>--%>
    <p class="video">
<%--        <object data="https://jx.688ing.com/?search=https://v.qq.com/x/cover/rj8uc45tm8a17wm.html"></object>--%>
        <object data="http://api.bbbbbb.me/jx/?url=${sessionScope.selectmovie.ypdz}"></object>
    </p>
</c:if>
<c:if test="${sessionScope.selectmovie==null}">
    <h1 style="text-align:center">无播放信息</h1>
</c:if>

</body>
</html>
