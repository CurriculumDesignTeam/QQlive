<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>在线影视-${sessionScope.loginuser.yhnc}的信息</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/table.css" rel="stylesheet">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body style="text-align: center">

<c:if test="${sessionScope.gkjl!=null}">
    <div style="text-align: center">
        <h1>${sessionScope.loginuser.yhnc}の观影记录</h1>
        <table class="table table-bordered table-hover" style="width: 50%">
            <tr class="success">
                <th>观看影片名称</th>
                <th>上次观看时间</th>
            </tr>

            <c:forEach var="item" items="${sessionScope.gkjl}">
                <tr>
                    <td>${item.ypmc}</td>
                    <td>${item.gksj}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</c:if>



</body>
</html>
