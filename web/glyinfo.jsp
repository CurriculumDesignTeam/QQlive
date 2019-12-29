<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>在线影视-上传记录</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/table.css" rel="stylesheet">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body style="text-align: center">
<h1>${sessionScope.logingly.glyzh}の上传记录</h1>
<c:if test="${!empty sessionScope.scjl}">
    <div>
        <table class="table table-bordered table-hover" style="width: 30%">
            <tr class="success">
                <th>上传影片名称</th>
            </tr>

            <c:forEach var="item" items="${sessionScope.scjl}">
                <tr>
                    <td>${item.ypmc}</td>
                </tr>


            </c:forEach>
        </table>
    </div>
</c:if>
<c:if test="${empty sessionScope.scjl}">
    <h1>暂无上传记录！</h1>
</c:if>

</body>
</html>
