<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: fyz
  Date: 2019/12/24
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的信息</title>
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
