<%--
  Created by IntelliJ IDEA.
  User: fyz
  Date: 2019/12/23
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="yp" class="bean.Yp" />
<html>
<head>
    <title>正在播放</title>
</head>
<body>


<h1 style="text-align:center"><%=request.getParameter("ypmc")%></h1>

<object data="<%="https://jx.688ing.com/?search="+request.getParameter("ypdz")%>"  width="100%" height="666"></object>


</body>
</html>
