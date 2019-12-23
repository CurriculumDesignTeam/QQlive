<%--
  Created by IntelliJ IDEA.
  User: fyz
  Date: 2019/12/23
  Time: 13:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <script type="text/javascript" rel="script" src="js/check_function.js"></script>
    <script src="js/jquery-3.4.1.js"></script>
</head>
<body style="text-align: center">

<div>
    <form action="Register" method="post">
        <h1>欢迎注册</h1><br>
        <div>
            <input type="email" id="username" name="username" placeholder="Enter email" onkeyup="checkemail()">
            <br><span id="usernamecheck"></span>
            <br><br>
        </div>

        <input type="button" id="toemail" class="btn" value="发送邮箱验证码" onclick="get_email_code()"><br><br>

        <div>
            <input type="text" id="email_code" placeholder="Enter emailcode" name="email_code">
            <br><br>
        </div>

        <div>
            <input type="password" id="password" name="password" placeholder="Enter password" onkeyup="checkpassword()">
            <br><span id="passwordcheck1"></span>
            <br><span id="passwordcheck2"></span>
            <br><span id="passwordcheck3"></span>
            <br><br>
        </div>

        <div>
            <input type="submit" class="btn" value="立即注册">
            <br><br>
        </div>
    </form>
</div>

</body>
</html>
