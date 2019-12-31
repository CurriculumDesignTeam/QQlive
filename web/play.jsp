<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="yp" class="bean.Yp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>在线影视-${sessionScope.selectmovie.ypmc}</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
    <link rel="stylesheet" href="css/play.css">
</head>
<body style="margin: 0">

<c:if test="${sessionScope.selectmovie!=null}">
    <div>
<%--        <h1 style="text-align:center">${sessionScope.selectmovie.ypmc}</h1>--%>
        <object data="https://www.hyxuanit.com/jx/?url=${sessionScope.selectmovie.ypdz}" width="100%" height="100%"></object>
    </div>
</c:if>
<c:if test="${sessionScope.selectmovie==null}">
    <h1 style="text-align:center">无播放信息</h1>
</c:if>

</body>
</html>
