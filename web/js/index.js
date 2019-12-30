var curr = 0;
var addedLink = 0;
images = [];
images[0] = new Image();
images[0].src = "imgs/slider/01.jpg";
images[0].href = "JudgeVip?selectmovieid=184";
images[1] = new Image();
images[1].src = "imgs/slider/02.jpg";
images[1].href = "JudgeVip?selectmovieid=168";
images[2] = new Image();
images[2].src = "imgs/slider/03.jpg";
images[2].href = "JudgeVip?selectmovieid=224";
images[3] = new Image();
images[3].src = "imgs/slider/04.jpg";
images[3].href = "JudgeVip?selectmovieid=165";
images[4] = new Image();
images[4].src = "imgs/slider/05.jpg";
images[4].href = "JudgeVip?selectmovieid=250";
images[5] = new Image();
images[5].src = "imgs/slider/06.jpg";
images[5].href = "JudgeVip?selectmovieid=170";
images[6] = new Image();
images[6].src = "imgs/slider/07.jpg";
images[6].href = "JudgeVip?selectmovieid=201";
images[7] = new Image();
images[7].src = "imgs/slider/08.jpg";
images[7].href = "JudgeVip?selectmovieid=160";

/**
 * 设置封面滚动
 */
function swapPic(){
    if(addedLink === 0){
        addLink();
        addedLink = 1;
    }
    a = document.getElementById("randa");
    document.randimg.src = images[curr].src;
    a.href = images[curr].href;
    var id = "p" + curr;
    var p =  document.getElementById(id);
    reset();
    p.style.color = "#ff5c38";
    p.style.fontSize = "21px";
    curr += 1;
    if(curr >= 8){
        curr = 0;
    }
    setTimeout('swapPic()',2500);
}

/**
 * 添加超链接
 */
function addLink() {
    for(var i=0;i<8;i++){
        var id = "a" + i;
        var a = document.getElementById(id);
        a.href = images[i].href;
    }
}

/**
 * 重置
 */
function reset() {
    for(var i=0;i<8;i++){
        var id = "p" + i;
        var p = document.getElementById(id);
        p.style.color = "#ffffff";
        p.style.fontSize = "16px";
    }
}

/**
 * 鼠标悬浮事件
 */
$(function () {
    $("p[id^='p']").hover(function () {
        var id = $(this).attr("id");
        var p = document.getElementById(id);
        var n = id.substring(1);
        n = parseInt(n);
        curr = n;
        a = document.getElementById("randa");
        document.randimg.src = images[curr].src;
        a.href = images[curr].href;
        reset();
        p.style.color = "#ff5c38";
        p.style.fontSize = "21px";

    })
});