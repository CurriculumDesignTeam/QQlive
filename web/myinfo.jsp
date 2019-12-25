<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的信息</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
</head>
<body style="text-align: center">

<c:if test="${sessionScope.gkjl!=null}">
    <div>
        <h1>${sessionScope.loginuser.yhnc}の观影记录</h1>
        <table align="center">
            <tr>
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
