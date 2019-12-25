<%--
  Created by IntelliJ IDEA.
  User: fyz
  Date: 2019/12/25
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我是后台</title>
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
<div class="main" style="border-radius: 12px">

    <div class="title" style="margin: 25px 0 45px 0">
        <h1>管理员登录</h1>
    </div>

    <form action="Glylogin" class="login-form" method="post" novalidate >
        <div class="input-content">
            <div>
                <label>
                    <input type="email" placeholder="请输入邮箱" id="username" name="username" required value="1522426323@qq.com"/>
                </label>
            </div>

            <div style="margin-top: 16px">
                <label>
                    <input type="password" placeholder="登录密码" id="password" name="password" required maxlength="18" value="f123456"/>
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
