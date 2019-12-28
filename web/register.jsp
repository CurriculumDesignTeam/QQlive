<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>在线影视-注册</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
    <script type="text/javascript" rel="script" src="js/check_function.js"></script>
    <script src="js/jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="css/register.css">
</head>

<body style="text-align: center">

    <div class="div">
        <form name="f1" action="Register" method="post" class="registered" onsubmit="return check()">
            <h1 style="text-align: center;">在线视频-用户注册</h1>
            <label>
                <span>昵称：</span>
                <input type="text" id="nickname" name="nickname" placeholder="Enter nickname">
            </label>

            <label>
                <span>邮箱：</span>
                <input type="email" id="username" name="username" placeholder="Enter email" onkeyup="checkemail()">

                <input type="button" class="btn" id="toemail" value="发送验证码" onclick="get_email_code()">
            </label>
            <span id="usernamecheck"></span>
            <label>
                <span>验证码：</span>
                <input type="text" id="email_code" placeholder="Enter emailcode" name="email_code">
            </label>

            <label>
                <span>密码：</span>
                <input type="password" id="password" name="password" placeholder="Enter password" onkeyup="checkpassword()">
            </label>

            <div style="margin-left: 70px">
                <span id="passwordcheck1"></span>
                <span id="passwordcheck2"></span>
                <span id="passwordcheck3"></span>
            </div>

            <label style="width: 100%;">
                <span>&nbsp;</span>
                <input type="submit" class="button" value="注册" />
            </label>
        </form>
    </div>


</body>
</html>
