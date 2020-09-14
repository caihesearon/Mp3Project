<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'login.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/style.css" rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="js/layui/css/layui.css">

    <style type="text/css">
        #captcha2 {
            width: 300px;
            display: inline-block;
        }

        #wait2 {
            text-align: left;
            color: #666;
            margin: 0;
        }

        .show {
            display: block;
        }

        #notice2 {
            color: red;
        }

        .hide {
            display: none;
        }
    </style>


</head>
<body>
<h1>Mp3 Login Form</h1>
<div class="login-form">
    <div class="close"></div>
    <div class="head-info">
        <label class="lbl-1"> </label> <label class="lbl-2"> </label> <label
            class="lbl-3"> </label>
    </div>
    <div class="clear"></div>
    <div class="avtar">
        <img src="images/avtar.png" />
    </div>
    <form action="login" method="post" id="">
        <input type="text" class="text" value="Username" name="userName" id="userName"
               onfocus="this.value = '';"
               onblur="if (this.value == '') {this.value = 'Username';}">
        <div class="key">
            <input type="password" value="Password" name="passWord" id="passWord"
                   onfocus="this.value = '';"
                   onblur="if (this.value == '') {this.value = 'Password';}">
        </div>

        <div id="tong" style="margin-top: -40px;padding-bottom: 20px">
            <div>
<%--                <label style="color: white;">完成验证：</label>--%>
                <div id="captcha2">
                    <p id="wait2" class="show">正在加载验证码......</p>
                </div>
            </div>
        </div>

<%--        <div class="signin">--%>
<%--            <p id="notice2" class="hide">请先完成验证</p>--%>
<%--            <input type="submit" class="hide" id="submit2" value="Login">--%>
<%--        </div>--%>
    </form>
</div>
<div class="copy-rights">
    <p>
        Copyright &copy; 2015.Company name All rights reserved.More Templates
        <a href="http://www.cssmoban.com/" target="_blank" title="探长之家">探长之家</a>
        - Collect from <a href="http://www.cssmoban.com/" title="总华探长"
                          target="_blank">总华探长</a>
    </p>
</div>

</body>
<!-- 注意，验证码本身是不需要 jquery 库，此处使用 jquery 仅为了在 demo 使用，减少代码量 -->
<script src="http://apps.bdimg.com/libs/jquery/1.9.1/jquery.js"></script>

<!-- 引入 gt.js，既可以使用其中提供的 initGeetest 初始化函数 -->
<script src="js/gt.js"></script>
<script type="text/javascript" src="/js/layui/jquery-3.4.1.min.js"></script>
<script src="/js/layui/layui.js"></script>
<script type="text/javascript" src="/js/yanzhengma.js"></script>
<script>
    if('${error}'!='' || '${error}' != 0){
        alert('${error}');
    }
</script>
</html>
