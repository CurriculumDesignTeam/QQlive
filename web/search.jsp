<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>搜索</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
    <link rel="stylesheet" href="css/index.css">
</head>
<body style="text-align: center">
<div>
    <form action="Search">
        <label>
            <input type="text" name="searchword">
        </label>
        <button type="submit">全网搜</button>
    </form>
    <table>
        <c:forEach var="item" items="${sessionScope.searchmovie}" varStatus="status">
            <c:if test="${status.index%7==0}">
                <tr>
            </c:if>

            <td>
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
