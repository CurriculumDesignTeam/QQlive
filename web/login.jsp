<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
    <link rel="stylesheet" href="css/login.css">
</head>

<body style="text-align: center">

    <div class="main" style="border-radius: 12px">

        <div class="title" style="margin: 25px 0 45px 0">
            <h1>用户登录</h1>
        </div>

        <form action="Login" class="login-form" method="post" novalidate >
            <div class="input-content">
                <div>
                    <label>
                        <input type="email" placeholder="请输入邮箱" id="username" name="username" required value="1953649096@qq.com"/>
                    </label>
                </div>

                <div style="margin-top: 16px">
                    <label>
                        <input type="password" placeholder="登录密码" id="password" name="password" required maxlength="18" value="w108412696"/>
                    </label>
                </div>
            </div>

            <div style="text-align: center">
                <button type="submit" class="enter-btn" >登录</button>
            </div>

            <div class="foor">
                <div class="left">
                    <a href="findpassword.jsp">
                        忘记密码 ?
                    </a>
                </div>
                <div class="right">
                    <a href="register.jsp">
                        注册账户
                    </a>
                </div>
            </div>

        </form>
    </div>

</body>
</html>
