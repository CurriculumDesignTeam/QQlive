<%@ page import="util.Test" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>在线影视</title>

    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/bootstrap.min.js"></script>

  </head>
  <body>

  <%
    out.println(Test.test());
  %>

  <br>

  <c:out value="test"/>

  <br>

  <button class="btn btn-default btn-sm">按钮</button>

  </body>
</html>
