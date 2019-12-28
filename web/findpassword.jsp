<%--
  Created by IntelliJ IDEA.
  User: fyz
  Date: 2019/12/23
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>在线影视-找回密码</title>
    <script type="text/javascript" rel="script" src="js/check_function.js"></script>
    <script src="js/jquery-3.4.1.js"></script>
</head>
<body style="text-align: center">

<div>
    <form action="Findpw" method="post" onsubmit="return checkform()">
        <h1>重置密码</h1><br>

        <div>
            <input type="email" id="username" name="username" placeholder="Enter your email" onkeyup="checkemail()">
            <br><span id="usernamecheck"></span>
            <br><br>
        </div>

        <input type="button" id="toemail" class="btn" value="发送邮箱验证码" onclick="get_email_code()"><br><br>

        <div>
            <input type="text" id="email_code" placeholder="Enter emailcode" name="email_code">
            <br><br>
        </div>

        <div>
            <input type="password" id="password" name="newpassword" placeholder="Enter new password" onkeyup="checkpassword()">
            <br><span id="passwordcheck1"></span>
            <br><span id="passwordcheck2"></span>
            <br><span id="passwordcheck3"></span>
            <br><br>
        </div>

        <div>
            <input 	type="submit" class="btn" name="login" value="重置密码">
            <br><br>
        </div>

    </form>
</div>

</body>
</html>
