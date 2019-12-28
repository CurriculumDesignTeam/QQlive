<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>在线影视-登录</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
    <link rel="stylesheet" href="css/login.css">

    <style>
        html,body{
            margin:0;
            width:100%;
            height:100%;
            overflow:hidden;
            background:#000;
        }
        #canvas{
            position:absolute;
            width:100%;
            height:100%;
        }
    </style>

</head>

<body>

    <canvas id="canvas"></canvas>

    <div class="main" style="border-radius: 12px">

        <div class="title" style="margin: 25px 0 45px 0;text-align: center">
            <h1 style="color: #fff">用户登录</h1>
        </div>

        <form action="Login" class="login-form" method="post" novalidate >
            <div class="input-content">
                <div style="text-align: center">
                    <label>
                        <input type="email" placeholder="请输入邮箱" id="username" name="username" required value="1953649096@qq.com"
                        style="font-size: 17px"/>
                    </label>
                </div>

                <div style="margin-top: 16px;text-align: center">
                    <label>
                        <input type="password" placeholder="登录密码" id="password" name="password" required maxlength="18" value="w108412696"
                        style="font-size: 17px"/>
                    </label>
                </div>
            </div>

            <div style="text-align: center">
                <button type="submit" class="enter-btn" >登录</button>
            </div>

            <div class="foor">
                <div class="left">
                    <a href="findpassword.jsp" target="_blank">
                        忘记密码 ?
                    </a>
                </div>
                <div class="right">
                    <a href="register.jsp" target="_blank">
                        注册账户
                    </a>
                </div>
            </div>

        </form>
    </div>

    <script src="js/particle_effects.js"></script>

</body>
</html>
