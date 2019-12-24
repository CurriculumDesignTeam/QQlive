<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的信息</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
</head>
<body>

<c:if test="${sessionScope.gkjl!=null}">
    <c:forEach var="item" items="${sessionScope.gkjl}">
        ${item.ypmc}
        ${item.gksj}
    </c:forEach>
</c:if>



</body>
</html>
