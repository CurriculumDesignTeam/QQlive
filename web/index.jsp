<%@ page import="util.Test" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>在线影视</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
  </head>
  <body>

  <%
    out.println(Test.test());
  %>

  <br>

  <c:out value="test"/>

  </body>
</html>
