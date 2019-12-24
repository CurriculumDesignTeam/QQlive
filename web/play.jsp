<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="yp" class="bean.Yp" />
<html>
<head>
    <title>正在播放</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
</head>
<body>


<h1 style="text-align:center"><%=request.getParameter("ypmc")%></h1>

<object data="<%="https://jx.688ing.com/?search="+request.getParameter("ypdz")%>"  width="100%" height="666"></object>


</body>
</html>
