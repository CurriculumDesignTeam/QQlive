<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
</head>
<body style="text-align: center">

<div>
    <br><br><br>
    <form action="Login" method="post">

        <h1>欢迎使用在线影视系统</h1><br><br>

        <div>
            <input type="email" id="username" name="username" placeholder="Enter email">
            <br><span id="usernamecheck"></span>
            <br />
            <br />
        </div>

        <div class="input-area">
            <input type="password" id="password" name="password" placeholder="Enter password">
            <br />
            <br />
        </div>

        <div class="tips">
            <label style="text-align: left"><a href="register.jsp">注册账号</a></label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <label><a href="findpassword.jsp">忘记密码？</a></label><br><br>
        </div>

        <div>
            <input 	type="submit" class="btn" name="login" value="立即登陆">
        </div>
        <br><br>

    </form>
</div>


</body>
</html>
