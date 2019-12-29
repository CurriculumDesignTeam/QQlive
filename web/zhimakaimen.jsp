<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>在线影视-后台</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
<div class="main" style="border-radius: 12px">

    <div class="title" style="margin: 25px 0 45px 0;text-align: center">
        <h1 style="color: white">管理员登录</h1>
    </div>

    <form action="Glylogin" class="login-form" method="post" novalidate >
        <div class="input-content" style="text-align: center">
            <div>
                <label>
                    <input type="email" placeholder="请输入邮箱" id="username" name="username" required value="1522426323@qq.com"
                           style="font-size: 17px"/>
                </label>
            </div>

            <div style="margin-top: 16px">
                <label>
                    <input type="password" placeholder="登录密码" id="password" name="password" required maxlength="18" value="f123456"
                           style="font-size: 17px"/>
                </label>
            </div>
        </div>

        <div style="text-align: center">
            <button type="submit" class="enter-btn" >登录</button>
        </div>

    </form>
</div>
</body>
</html>
