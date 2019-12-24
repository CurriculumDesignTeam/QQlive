<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>在线影视-中国领先的在线视频媒体平台，海量高清视频在线观看</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
    <link rel="stylesheet" href="css/index.css">
    <script>
      var ranl = 0;
      var useRand = 0;
      var curr = 0;
      images = [];
      images[0] = new Image();
      images[0].src = "imgs/slider/01.jpg";
      images[0].href = "https://v.qq.com/x/cover/hk765ykwj4bjpcl.html";
      images[1] = new Image();
      images[1].src = "imgs/slider/02.jpg";
      images[1].href = "https://v.qq.com/x/cover/mzc00200hmv27ue.html";
      images[2] = new Image();
      images[2].src = "imgs/slider/03.jpg";
      images[2].href = "https://v.qq.com/x/cover/mzc00200y6souzq.html";
      images[3] = new Image();
      images[3].src = "imgs/slider/04.jpg";
      images[3].href = "https://v.qq.com/x/cover/714pdmcrnqdlmdx.html";
      images[4] = new Image();
      images[4].src = "imgs/slider/05.jpg";
      images[4].href = "https://v.qq.com/x/cover/mzc00200qre764z.html";
      images[5] = new Image();
      images[5].src = "imgs/slider/06.jpg";
      images[5].href = "https://v.qq.com/x/cover/mzc00200bq925ky.html";
      images[6] = new Image();
      images[6].src = "imgs/slider/07.jpg";
      images[6].href = "https://v.qq.com/x/cover/3i8a8pc4nthjqq8.html";
      images[7] = new Image();
      images[7].src = "imgs/slider/08.jpg";
      images[7].href = "https://v.qq.com/x/cover/rj8uc45tm8a17wm.html";

      function swapPic(){
        a = document.getElementById("randa");
        document.randimg.src = images[curr].src;
        a.href = images[curr].href;
        curr += 1;
        if(curr >= 8){
          curr = 0;
        }
        setTimeout('swapPic()',3000);
      }
    </script>

  </head>

  <body style="background-color: rgb(248, 248, 248)" onload="swapPic()">

  <div style="background-color: rgb(99, 108, 114);height: 68px">

    <table>
      <tr>
        <td><img height="36px" src="favicon.ico" alt="logo"></td>

        <td>
          <form action="">
            <label>
              <input type="text">
            </label>
            <button type="submit">全网搜</button>
          </form>
        </td>

        <td><div>
          <a href="login.jsp"><button>登录</button></a>
          <a href="register.jsp" target="_blank"><button>注册</button></a>
        </div></td>

      </tr>
    </table>

  </div>


  <div style="height: 530px;background-color: #2aabd2;margin-bottom: 10px">

    <div style="background-color: #0f0f0f;width: 1535px;height: 100%;float: left">
      <a id="randa" href="https://v.qq.com/x/cover/hk765ykwj4bjpcl.html" target="_blank">
        <img id="randimg" name="randimg" src="imgs/slider/01.jpg" style="height: 530px" alt="图片加载失败">
      </a>
    </div>

    <div style="background-color: rgb(34, 34, 45);width: 368px;height: 100%;float: right">
      <b>重磅推荐</b><br>

      <span>我和我的祖国</span><br>
      <span>受益人</span><br>
      <span>法医秦明之亡命救赎</span><br>
      <span>少年的你</span><br>
      <span>魔戟战神</span><br>
      <span>长安道</span><br>
      <span>邻座的怪同学</span><br>
      <span>中国机长</span>

    </div>

  </div>

  <div>
    <h2 style="margin-left: 116px;">今日热门</h2>
    <table style="margin: 0 auto">
      <tr>

        <td>
          <div style="margin: 10px">
            <a href="https://v.qq.com/x/cover/mzc00200hmv27ue.html" target="_blank">
              <img width="100%" src="http://puui.qpic.cn/vcover_vt_pic/0/mzc00200hmv27ue1575884632/220" alt="图片加载失败" style="border-radius: 6px">
              <p>受益人</p>
              <p class="wrap" title="主演：大鹏 柳岩 张子贤 彭波">
                主演：大鹏 柳岩 张子贤 彭波
              </p>
            </a>
          </div>
        </td>
        <td>
          <div style="margin: 10px">
            <a href="https://v.qq.com/x/cover/mzc00200y6souzq.html" target="_blank">
              <img width="100%" src="http://puui.qpic.cn/vcover_vt_pic/0/mzc00200y6souzq1576721122/220" alt="图片加载失败" style="border-radius: 6px">
              <p>法医秦明之亡命救赎</p>
              <p class="wrap" title="主演：邓飞 希童 袁祥仁 闫鹏 黄皓达">
                主演：邓飞 希童 袁祥仁 闫鹏 黄皓达
              </p>
            </a>
          </div>
        </td>
        <td>
          <div style="margin: 10px">
            <a href="https://v.qq.com/x/cover/mzc00200qre764z.html" target="_blank">
              <img width="100%" src="http://puui.qpic.cn/vcover_vt_pic/0/mzc00200qre764z1575442675/220" alt="图片加载失败" style="border-radius: 6px">
              <p>魔戟战神</p>
              <p class="wrap" title="主演：张冰倩 杜鹏远 任逍遥">
                主演：张冰倩 杜鹏远 任逍遥
              </p>
            </a>
          </div>
        </td>
        <td>
          <div style="margin: 10px">
            <a href="https://v.qq.com/x/cover/714pdmcrnqdlmdx.html" target="_blank">
              <img width="100%" src="http://puui.qpic.cn/vcover_vt_pic/0/714pdmcrnqdlmdx1574668477/220" alt="图片加载失败" style="border-radius: 6px">
              <p>少年的你</p>
              <p class="wrap" title="主演：周冬雨 易烊千玺 尹昉 黄觉 吴越">
                主演：周冬雨 易烊千玺 尹昉 黄觉 吴越
              </p>
            </a>
          </div>
        </td>
        <td>
          <div style="margin: 10px">
            <a href="https://v.qq.com/x/cover/hk765ykwj4bjpcl.html" target="_blank">
              <img width="100%" src="http://puui.qpic.cn/vcover_vt_pic/0/hk765ykwj4bjpcl1576210556/220" alt="图片加载失败" style="border-radius: 6px">
              <p>我和我的祖国</p>
              <p class="wrap" title="主演：黄渤 张译 韩昊霖 杜江 葛优">
                主演：黄渤 张译 韩昊霖 杜江 葛优
              </p>
            </a>
          </div>
        </td>
        <td>
          <div style="margin: 10px">
            <a href="https://v.qq.com/x/cover/mzc00200bq925ky.html" target="_blank">
              <img width="100%" src="http://puui.qpic.cn/vcover_vt_pic/0/mzc00200bq925ky1576154352/220" alt="图片加载失败" style="border-radius: 6px">
              <p>长安道</p>
              <p class="wrap" title="主演：王凯 马天宇 王大陆 余皑磊">
                主演：王凯 马天宇 王大陆 余皑磊
              </p>
            </a>
          </div>
        </td>
        <td>
          <div style="margin: 10px">
            <a href="https://v.qq.com/x/cover/cp8jhn5o7r5j0aa.html" target="_blank">
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

  <div style="margin-bottom: 20px;">
    <h2 style="margin-left: 116px;">电影排行</h2>
    <table style="margin: 0 auto;">
      <tr>
        <td>
          <div style="margin: 10px">
            <a href="https://v.qq.com/x/cover/hk765ykwj4bjpcl.html" target="_blank">
              <img width="100%" src="http://puui.qpic.cn/vcover_vt_pic/0/hk765ykwj4bjpcl1576210556/220" alt="图片加载失败" style="border-radius: 6px">
              <p>我和我的祖国</p>
              <p class="wrap" title="主演：黄渤 张译 韩昊霖 杜江 葛优">
                主演：黄渤 张译 韩昊霖 杜江 葛优
              </p>
            </a>
          </div>

        </td>
        <td>
          <div style="margin: 10px">
            <a href="https://v.qq.com/x/cover/714pdmcrnqdlmdx.html" target="_blank">
              <img width="100%" src="http://puui.qpic.cn/vcover_vt_pic/0/714pdmcrnqdlmdx1574668477/220" alt="图片加载失败" style="border-radius: 6px">
              <p>少年的你</p>
              <p class="wrap" title="主演：周冬雨 易烊千玺 尹昉 黄觉 吴越">
                主演：周冬雨 易烊千玺 尹昉 黄觉 吴越
              </p>
            </a>
          </div>
        </td>
        <td>
          <div style="margin: 10px">
            <a href="https://v.qq.com/x/cover/ki0r21vwmy1aga2.html" target="_blank">
              <img width="100%" src="http://puui.qpic.cn/vcover_vt_pic/0/ki0r21vwmy1aga21559271820/220" alt="图片加载失败" style="border-radius: 6px">
              <p>邪不压正</p>
              <p class="wrap" title="主演：姜文 彭于晏 廖凡 周韵 许晴">
                主演：姜文 彭于晏 廖凡 周韵 许晴
              </p>
            </a>
          </div>
        </td>
        <td>
          <div style="margin: 10px">
            <a href="https://v.qq.com/x/cover/6983f15b7g5xch7.html" target="_blank">
              <img width="100%" src="http://puui.qpic.cn/vcover_vt_pic/0/6983f15b7g5xch71566976604/220" alt="图片加载失败" style="border-radius: 6px">
              <p>动物世界</p>
              <p class="wrap" title="主演：李易峰 迈克尔·道格拉斯 周冬雨 曹炳琨 王戈">
                主演：李易峰 迈克尔·道格拉斯 周冬雨 曹炳琨 王戈
              </p>
            </a>
          </div>
        </td>
        <td>
          <div style="margin: 10px">
            <a href="https://v.qq.com/x/cover/r6ri9qkcu66dna8.html" target="_blank">
              <img width="100%" src="http://puui.qpic.cn/vcover_vt_pic/0/r6ri9qkcu66dna81559137861/220" alt="图片加载失败" style="border-radius: 6px">
              <p>狄仁杰之四大天王</p>
              <p class="wrap" title="主演：赵又廷 冯绍峰 林更新 刘嘉玲 马思纯 阮经天">
                主演：赵又廷 冯绍峰 林更新 刘嘉玲 马思纯 阮经天
              </p>
            </a>
          </div>
        </td>
        <td>
          <div style="margin: 10px">
            <a href="https://v.qq.com/x/cover/5y95zy4idzqf6hc.html" target="_blank">
              <img width="100%" src="http://puui.qpic.cn/vcover_vt_pic/0/5y95zy4idzqf6hc1515143734/220" alt="图片加载失败" style="border-radius: 6px">
              <p>捉妖记2</p>
              <p class="wrap" title="主演：梁朝伟 白百何 井柏然 李宇春 杨祐宁">
                主演：梁朝伟 白百何 井柏然 李宇春 杨祐宁
              </p>
            </a>
          </div>
        </td>
        <td>
          <div style="margin: 10px">
            <a href="https://v.qq.com/x/cover/rj8uc45tm8a17wm.html" target="_blank">
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


  <div style="background-color: #2aabd2;height: 300px">

  </div>

  </body>
</html>
