<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>在线影视-上传记录</title>
</head>
<body style="text-align: center">

<c:if test="${sessionScope.scjl!=null}">
    <div>
        <h1>${sessionScope.logingly.glyzh}の上传记录</h1>
        <table align="center">
            <tr>
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


</body>
</html>
