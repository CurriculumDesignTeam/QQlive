<%@ page import="util.Test" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%
    out.println(Test.test());
  %>


  <br>

  <c:out value="test"/>


  </body>
</html>
