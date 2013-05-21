<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErrorPage.aspx.cs" Inherits="PingCar.Web.ErrorManager.ErrorPage" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>很抱歉! 系统暂时未能为您提供所需服务! 404/403/500</title>
    <style type="text/css">
        .errorpanel
        {
            position: relative;
            width: 600px;
            height: 250px;
            margin: 0 auto;
            border: dotted 1px #aaa;
            margin-top: 200px;
            background: #fff url(error404.gif) no-repeat left -10px;
        }
        .remark
        {
            position: relative;
            z-index: 1000;
            width: auto;
            height: 250px;
            margin: 0 5px 0 220px;
            padding-top: 10px;
        }
        .remark h1
        {
            margin: 0 0 10px 0;
            padding: 10px 0;
            font-family: Arial;
            font-size: 15px;
            border-bottom: solid 3px #A3E730;
        }
        .remark p
        {
            margin: 0;
            line-height: 20px;
            font-size: 12px;
            font-family: Arial;
            color: #aaa;
            text-indent: 20px;
        }
        .remark p.contact
        {
            color: Blue;
        }
        .remark p.nav
        {
            position: absolute;
            right: 5px;
            bottom: 15px;
            width: 100%;
            padding: 0;
            text-align: right;
        }
        .remark p.nav a
        {
            text-decoration: none;
            font-size: 14px;
            font-weight: bold;
            color: #333;
        }
        .remark p.nav a:hover
        {
            color: #3399FF;
            text-decoration: underline;
        }
        .navbg
        {
            position: absolute;
            z-index: 100;
            left: 0;
            bottom: 0;
            width: 100%;
            height: 30px;
            background-color: #eee;
            opacity: 0.6;
            filter: alpha(opacity=60);
        }
    </style>
</head>
<body>
    <div style="margin-top: 178.5px;" class="errorpanel">
        <div class="remark">
            <h1>
                您要查看的页面可能已经删除、更名或暂时不可用。</h1>
            <p>
                出现该异常可能存在的原因: 当前域不存在, 您的权限不够, 当前页面不存在或者您还没有登录系统!
            </p>
            <p>
                请尝试以下操作： 确保浏览器的地址栏中显示的网站地址的拼写和格式正确无误。
            </p>
            <p>
                如果通过单击链接而到达了该网页，请与客服或Webmaster联系，通知我们该链接的格式不正确。
            </p>
            <p class="contact">
                管理员 E-mail: chu888chu888@yahoo.com.cn
            </p>
            <p class="nav">
                <a href="#">首页</a> | <a href="#">
                    重新登录</a> | <a href="#">帮助中心</a> | <a href="#">
                        在线反馈</a>
            </p>
        </div>
        <div class="navbg">
        </div>
    </div>
</body>
</html>
