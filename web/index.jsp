<%@ page import="util.Test" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>在线影视-中国领先的在线视频媒体平台，海量高清视频在线观看</title>

    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/bootstrap.min.js"></script>

  </head>
  <body>

  <div style="background-color: rgb(99, 108, 114);height: 68px">
    <div style="position: fixed;margin-left: 300px">
      <img height="36px" src="favicon.ico" alt="logo">
    </div>

    <div style="text-align: center">
      <form action="">
        <label>
          <input type="text">
        </label>
        <button type="submit">全网搜</button>
      </form>
    </div>

  </div>

  <%
    out.println(Test.test());
  %>

  <br>

  <c:out value="test"/>

  <br>

  <button class="btn btn-default btn-sm">按钮</button>

  </body>
</html>
