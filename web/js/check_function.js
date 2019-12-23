function checkemail() {//检查用户名格式
    var username=document.getElementById("username");
    var usernamecheck=document.getElementById("usernamecheck");
    var myReg1=/^[a-zA-Z0-9_-]+@([a-zA-Z0-9]+\.)+(com|cn|net|org)$/;
    var flag=true;
    if(!myReg1.test(username.value)){
        usernamecheck.innerHTML="<em style='color:#FF0000'>非邮箱格式或不支持该邮箱</em>";
        flag=false;
    }else{
        usernamecheck.innerHTML="<em style='color:#00b72e'>邮箱格式检查通过</em>";
    }
    return flag;
}


function checkpassword() {//检查密码合法性
    var password=document.getElementById("password");
    var passwordcheck1=document.getElementById("passwordcheck1");
    var passwordcheck2=document.getElementById("passwordcheck2");
    var passwordcheck3=document.getElementById("passwordcheck3");
    if(password.value.length<6){
        passwordcheck1.innerHTML="<em style='color:#FF0000'>密码长度小于6</em>";
    }else if(password.value.length>18){
        passwordcheck1.innerHTML="<em style='color:#FF0000'>密码长度大于18</em>";
    }else{
        passwordcheck1.innerHTML="<em style='color:#00b72e'>密码长度检查通过</em>";
    }
    const myreg2=/^[a-zA-Z]/;//开头是字母
    const myReg3 = /^\w+$/;//只能包含字母、数字和下划线
    if(!myreg2.test(password.value)){
        passwordcheck2.innerHTML="<em style='color:#FF0000'>必须以字母开头</em>";
    }else {
        passwordcheck2.innerHTML="<em style='color:#00b72e'>字母开头检查通过</em>"
    }
    if(!myReg3.test(password.value)){
        passwordcheck3.innerHTML="<em style='color:#FF0000'>只能包含字母、数字、下划线</em>";
    }else{
        passwordcheck3.innerHTML="<em style='color:#00b72e'>不包含非法字符检查通过</em>";
    }
}


function checkform() {//检查用户名合法性
    var username=document.getElementById("username");
    var password=document.getElementById("password");
    //alert("username:"+username.value+"  password:"+password.value);

    var usernamecheck=document.getElementById("usernamecheck");
    var passwordcheck1=document.getElementById("passwordcheck1");
    var passwordcheck2=document.getElementById("passwordcheck2");
    var passwordcheck3=document.getElementById("passwordcheck3");
    var flag=1;
    if(username.value===''||username.value===undefined||username.value===null){
        usernamecheck.innerHTML="<em style='color:#FF0000'>邮箱不能为空</em>";
        return false;
    }else if(username.value.length<6||username.value.length>18){
        usernamecheck.innerHTML="<em style='color:#FF0000'>邮箱长度小于6或者大于18</em>";
        return false;
    }else {
        var myReg1=/^[a-zA-Z0-9_-]+@([a-zA-Z0-9]+\.)+(com|cn|net|org)$/;
        if(!myReg1.test(username.value)){
            usernamecheck.innerHTML="<em style='color:#FF0000'>非邮箱格式或不支持该邮箱</em>";
            return false;
        }
    }


    //检查密码合法性
    if(password.value===''||password.value===undefined||password.value===null){
        passwordcheck1.innerHTML="<em style='color:#FF0000'>密码不能为空</em>";
        return false;
    }else if(password.value.length<6||password.value.length>18){
        passwordcheck1.innerHTML="<em style='color:#FF0000'>密码长度小于6或大于18</em>";
        return false;
    }

    const myreg2=/^[a-zA-Z]/;//开头是字母
    const myreg3 = /^\w+$/;//只能包含字母、数字和下划线
    if(!myreg2.test(password.value)){
        passwordcheck1.innerHTML="<em style='color:#FF0000'>必须以字母开头</em>";
        return false;
    }
    if(!myReg3.test(password.value)){
        passwordcheck1.innerHTML="<em style='color:#FF0000'>不能包含非法字符</em>";
        return false;
    }

    return true;
}


//发送验证码并倒计时
function get_email_code() {
    if(!checkemail()){
        alert("邮箱格式不正确或不支持");
        return false;
    }

    RemainTime();
    $.post('Sendemail', {
        email : jQuery.trim($('#username').val())
    },function () {
        ;
    });
};
var iTime = 59;
var Account;
function RemainTime() {
    document.getElementById('toemail').disabled = true;
    //document.getElementById('toemail').style.backgroundColor="gray";
    var iSecond, sSecond = "", sTime = "";
    if (iTime >= 0) {
        iSecond = parseInt(iTime % 60);
        iMinute = parseInt(iTime / 60);
        if (iSecond >= 0) {
            if (iMinute > 0) {
                sSecond = iMinute + "分" + iSecond + "秒";
            } else {
                sSecond = iSecond + "秒";
            }
        }
        sTime = sSecond;
        if (iTime == 0) {
            clearTimeout(Account);
            sTime = '获取邮箱验证码';
            iTime = 59;
            document.getElementById('toemail').disabled = false;
            document.getElementById('toemail').style.backgroundColor="#00B72E";
        } else {
            Account = setTimeout("RemainTime()", 1000);
            iTime = iTime - 1;
        }
    } else {
        sTime = '没有倒计时';
    }
    document.getElementById('toemail').value = sTime;
}

