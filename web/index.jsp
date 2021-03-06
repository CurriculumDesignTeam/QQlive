<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>在线影视-中国领先的在线视频媒体平台，海量高清视频在线观看</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
    <link rel="stylesheet" href="css/index.css">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/index.js"></script>
  </head>

  <body style="background-color: rgb(248, 248, 248)" onload="swapPic()">

  <%--顶部导航--%>
  <div id="nav">

    <div style="width: 20%;height:100%;float: left;">
      <div style="margin-top: 15px;margin-left: 50px">
        <a href="#">
          <img id="logoimg" height="36px" src="favicon.ico" alt="logo">
          <b style="font-size: 25px;margin-bottom: 5px;vertical-align: middle">在线影视</b>
        </a>
      </div>
    </div>

    <div id="search">
      <form action="Search" id="searchForm" target="_blank">
        <label>
          <input id="searchInput" name="searchword" type="text" placeholder="搜片名/主演/类型">
        </label>
        <button id="searchBtn" type="submit" class="searchBtn">全网搜</button>
      </form>
    </div>

    <div id="btns">
      <div class="btn" style="padding-top: 15px;padding-right: 10px">
        <c:if test="${sessionScope.loginuser==null}">
          <img src="imgs/vip_user.png" style="opacity:0;vertical-align: middle;margin-right: 4px;width: 36px" alt="加载失败">
          <a href="login.jsp" style="vertical-align: middle">登录</a>
          <a href="register.jsp" target="_blank" style="vertical-align: middle">注册</a>
        </c:if>
        <c:if test="${sessionScope.loginuser!=null}">
          <c:if test="${sessionScope.loginuser.yhvip}">
            <img src="imgs/vip_user.png" style="vertical-align: middle;margin-right: 4px;width: 36px" alt="加载失败" title="尊享VIP">
          </c:if>
          <c:if test="${!sessionScope.loginuser.yhvip}">
            <a id="vip" href="" target="_blank">
              <img src="imgs/vip_user.png" style="opacity: 0.4; vertical-align: middle;margin-right: 4px;width: 36px" alt="加载失败" title="开通VIP">
            </a>
          </c:if>
          <a href="MyInfo" target="_blank" style="vertical-align: middle" title="个人中心">${sessionScope.loginuser.yhnc}</a>
          <a href="Logout" style="vertical-align: middle">注销</a>
        </c:if>
      </div>
    </div>
  </div>

  <%--滚动图片--%>
  <div id="banner">
    <div id="banner_cover">
      <a id="randa" href="https://v.qq.com/x/cover/hk765ykwj4bjpcl.html" target="_blank">
        <img id="randimg" name="randimg" src="imgs/slider/01.jpg" style="height: 530px" alt="图片加载失败">
      </a>
    </div>
    <div id="banner_items">
      <ul>
        <li style="height: 10%;padding: 0">
          <img src="imgs/hot.png" style="width: 24px;margin: 0 0 0 10px;" alt="加载失败">
          <b style="font-size: 26px;margin-left: 6px">重磅推荐</b>
        </li>
        <li><a id="a0" target="_blank"><p id="p0">中华兵王之警戒时刻</p></a></li>
        <li><a id="a1" target="_blank"><p id="p1">受益人</p></a></li>
        <li><a id="a2" target="_blank"><p id="p2">法医秦明之亡命救赎</p></a></li>
        <li><a id="a3" target="_blank"><p id="p3">少年的你</p></a></li>
        <li><a id="a4" target="_blank"><p id="p4">魔戟战神</p></a></li>
        <li><a id="a5" target="_blank"><p id="p5">长安道</p></a></li>
        <li><a id="a6" target="_blank"><p id="p6">邻座的怪同学</p></a></li>
        <li><a id="a7" target="_blank"><p id="p7">中国机长</p></a></li>
      </ul>
    </div>
  </div>

  <%--今日热门--%>
  <div>
    <h2 style="margin-left: 116px;">今日热门</h2>
    <table style="margin: 0 auto">
        <tr>
        <td>
          <div style="margin: 10px;position: relative">
            <a href="JudgeVip?selectmovieid=168" target="_blank">
                <img width="100%" src="http://puui.qpic.cn/vcover_vt_pic/0/mzc00200hmv27ue1575884632/220" alt="图片加载失败" style="border-radius: 6px">
                <p>受益人</p>
                <p class="wrap" title="主演：大鹏 柳岩 张子贤 彭波">
                    主演：大鹏 柳岩 张子贤 彭波
                </p>
                <img src="imgs/vip_movie.png" style="position: absolute;right: 5px;top:5px;display: inline-block" alt="加载失败" title="VIP专享影视">
            </a>
          </div>
        </td>
        <td>
          <div style="margin: 10px;position: relative">
            <a href="JudgeVip?selectmovieid=224" target="_blank">
              <img width="100%" src="http://puui.qpic.cn/vcover_vt_pic/0/mzc00200y6souzq1576721122/220" alt="图片加载失败" style="border-radius: 6px">
              <p>法医秦明之亡命救赎</p>
              <p class="wrap" title="主演：邓飞 希童 袁祥仁 闫鹏 黄皓达">
                主演：邓飞 希童 袁祥仁 闫鹏 黄皓达
              </p>
            </a>
            <img src="imgs/vip_movie.png" style="position: absolute;right: 5px;top:5px;display: inline-block" alt="加载失败" title="VIP专享影视">
          </div>
        </td>
        <td>
          <div style="margin: 10px;position: relative">
            <a href="JudgeVip?selectmovieid=250" target="_blank">
              <img width="100%" src="http://puui.qpic.cn/vcover_vt_pic/0/mzc00200qre764z1575442675/220" alt="图片加载失败" style="border-radius: 6px">
              <p>魔戟战神</p>
              <p class="wrap" title="主演：张冰倩 杜鹏远 任逍遥">
                主演：张冰倩 杜鹏远 任逍遥
              </p>
            </a>
            <img src="imgs/vip_movie.png" style="position: absolute;right: 5px;top:5px;display: inline-block" alt="加载失败" title="VIP专享影视">
          </div>
        </td>
        <td>
          <div style="margin: 10px;position: relative">
            <a href="JudgeVip?selectmovieid=165" target="_blank">
              <img width="100%" src="http://puui.qpic.cn/vcover_vt_pic/0/714pdmcrnqdlmdx1574668477/220" alt="图片加载失败" style="border-radius: 6px">
              <p>少年的你</p>
              <p class="wrap" title="主演：周冬雨 易烊千玺 尹昉 黄觉 吴越">
                主演：周冬雨 易烊千玺 尹昉 黄觉 吴越
              </p>
            </a>
          </div>
        </td>
        <td>
          <div style="margin: 10px;position: relative">
            <a href="JudgeVip?selectmovieid=226" target="_blank">
              <img width="100%" src="http://puui.qpic.cn/vcover_vt_pic/0/og0eputlxwet1cn1524011116/220" alt="图片加载失败" style="border-radius: 6px">
              <p>我不是药神</p>
              <p class="wrap" title="主演：徐峥 王传君 周一围 谭卓 章宇">
                主演：徐峥 王传君 周一围 谭卓 章宇
              </p>
            </a>
          </div>
        </td>
        <td>
          <div style="margin: 10px;position: relative">
            <a href="JudgeVip?selectmovieid=170" target="_blank">
              <img width="100%" src="http://puui.qpic.cn/vcover_vt_pic/0/mzc00200bq925ky1576154352/220" alt="图片加载失败" style="border-radius: 6px">
              <p>长安道</p>
              <p class="wrap" title="主演：王凯 马天宇 王大陆 余皑磊">
                主演：王凯 马天宇 王大陆 余皑磊
              </p>
            </a>
          </div>
        </td>
        <td>
          <div style="margin: 10px;position: relative">
            <a href="JudgeVip?selectmovieid=191" target="_blank">
              <img width="100%" src="http://puui.qpic.cn/vcover_vt_pic/0/cp8jhn5o7r5j0aa1519977118/220" alt="图片加载失败" style="border-radius: 6px">
              <p>英雄本色2018</p>
              <p class="wrap" title="主演：王凯 马天宇 王大陆 余皑磊">
                主演：王凯 马天宇 王大陆 余皑磊
              </p>
            </a>
          </div>
        </td>

      </tr>
    </table>
  </div>

  <%--电影排行--%>
  <div style="margin-bottom: 20px;">
    <h2 style="margin-left: 116px;">电影排行</h2>
    <table style="margin: 0 auto;">
      <tr>
        <td>
          <div style="margin: 10px;position: relative">
            <a href="JudgeVip?selectmovieid=199" target="_blank">
              <img width="100%" src="http://puui.qpic.cn/vcover_vt_pic/0/1jj78hgru2so83n1548665484/220" alt="图片加载失败" style="border-radius: 6px">
              <p>厉害了，我的国</p>
              <p class="wrap" title="光影记录彰显大国实力">
                光影记录彰显大国实力
              </p>
            </a>
          </div>

        </td>
        <td>
          <div style="margin: 10px;position: relative">
            <a href="JudgeVip?selectmovieid=165" target="_blank">
              <img width="100%" src="http://puui.qpic.cn/vcover_vt_pic/0/714pdmcrnqdlmdx1574668477/220" alt="图片加载失败" style="border-radius: 6px">
              <p>少年的你</p>
              <p class="wrap" title="主演：周冬雨 易烊千玺 尹昉 黄觉 吴越">
                主演：周冬雨 易烊千玺 尹昉 黄觉 吴越
              </p>
            </a>
          </div>
        </td>
        <td>
          <div style="margin: 10px;position: relative">
            <a href="JudgeVip?selectmovieid=162" target="_blank">
              <img width="100%" src="http://puui.qpic.cn/vcover_vt_pic/0/ki0r21vwmy1aga21559271820/220" alt="图片加载失败" style="border-radius: 6px">
              <p>邪不压正</p>
              <p class="wrap" title="主演：姜文 彭于晏 廖凡 周韵 许晴">
                主演：姜文 彭于晏 廖凡 周韵 许晴
              </p>
            </a>
          </div>
        </td>
        <td>
          <div style="margin: 10px;position: relative">
            <a href="JudgeVip?selectmovieid=164" target="_blank">
              <img width="100%" src="http://puui.qpic.cn/vcover_vt_pic/0/6983f15b7g5xch71566976604/220" alt="图片加载失败" style="border-radius: 6px">
              <p>动物世界</p>
              <p class="wrap" title="主演：李易峰 迈克尔·道格拉斯 周冬雨 曹炳琨 王戈">
                主演：李易峰 迈克尔·道格拉斯 周冬雨 曹炳琨 王戈
              </p>
            </a>
          </div>
        </td>
        <td>
          <div style="margin: 10px;position: relative">
            <a href="JudgeVip?selectmovieid=166" target="_blank">
              <img width="100%" src="http://puui.qpic.cn/vcover_vt_pic/0/r6ri9qkcu66dna81559137861/220" alt="图片加载失败" style="border-radius: 6px">
              <p>狄仁杰之四大天王</p>
              <p class="wrap" title="主演：赵又廷 冯绍峰 林更新 刘嘉玲 马思纯 阮经天">
                主演：赵又廷 冯绍峰 林更新 刘嘉玲 马思纯 阮经天
              </p>
            </a>
          </div>
        </td>
        <td>
          <div style="margin: 10px;position: relative">
            <a href="JudgeVip?selectmovieid=171" target="_blank">
              <img width="100%" src="http://puui.qpic.cn/vcover_vt_pic/0/5y95zy4idzqf6hc1515143734/220" alt="图片加载失败" style="border-radius: 6px">
              <p>捉妖记2</p>
              <p class="wrap" title="主演：梁朝伟 白百何 井柏然 李宇春 杨祐宁">
                主演：梁朝伟 白百何 井柏然 李宇春 杨祐宁
              </p>
            </a>
          </div>
        </td>
        <td>
          <div style="margin: 10px;position: relative">
            <a href="JudgeVip?selectmovieid=160" target="_blank">
              <img width="100%" src="http://puui.qpic.cn/vcover_vt_pic/0/rj8uc45tm8a17wm1575030295/220" alt="图片加载失败" style="border-radius: 6px">
              <p>中国机长</p>
              <p class="wrap" title="主演：张涵予 欧豪 杜江 袁泉 张天爱 李沁 张雅玫 杨祺如 高戈">
                主演：张涵予 欧豪 杜江 袁泉 张天爱 李沁 张雅玫 杨祺如 高戈
              </p>
            </a>
          </div>
        </td>
      </tr>
    </table>

  </div>

  <%--底部--%>
  <div style="background-color: #2aabd2;height: 300px">

  </div>

  </body>
</html>
