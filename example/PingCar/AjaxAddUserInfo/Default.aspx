<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AjaxAddUserInfo._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <%--<script type="text/javascript" src="js/jquery/jquery-1.3.2-vsdoc.js"></script>--%>

    <script type="text/javascript" src="js/jquery/jquery-1.3.2.js"></script>

    <script type="text/javascript" src="js/blockUI/jquery.blockUI.js"></script>

    <script type="text/javascript">
        //页面载入事件
        $("document").ready(function() {
            $("#txtUserName").blur(function() {
                CheckNickUserName();
            });
            $("#txtEmail").blur(function() {
                CheckEmail();
            });
            $("#txtPassWord").blur(function() {
                CheckPassWord();
            });
            $("#btnRegUser").click(function() {
                AddUserRegFunction();
            });
        });
        //用户名检测
        function CheckNickUserName() {
            AjaxCheckNickUserName();
        }
        function AjaxCheckNickUserName() {
            $("#MessageBox").html('<img src="/images/busy.gif" /> 请等待,数据正在添加...');
            $.post("CheckNickUserName.ashx",
                    null,
                    function() {
                        $("#MessageBox").html('<img src="/images/Good.gif" /> 用户名可用');
                    });
        }
        //Email检测
        function CheckEmail() {
            $("#MessageBox").html('<img src="/images/busy.gif" /> 你激发了Email输入...');

        }
        //密码检测
        function CheckPassWord() {

            $("#MessageBox").html('<img src="/images/busy.gif" /> 你激发了密码输入...');
        }
        //用户添加动作
        function AddUserRegFunction() {
            $.blockUI({ message: '<h1><img src="/images/busy.gif" /> 请等待,数据正在添加...</h1>' });
            AddUser();
        }
        //用户信息异步提交
        function AddUser() {
            var params = {
                txtUserName: [$("#txtUserName").val()],
                txtPassWord: [$("#txtPassWord").val()],
                txtEmail: [$("#txtEmail").val()]
            };
            $.ajax({
                type: "POST",
                url: "AddUser.ashx",
                data: params,
                success: function(msg) {
                    if (msg == "OK") {
                        $.blockUI({ message: '<h1><img src="/images/accept.png" /> 数据以添加成功</h1>' });
                    }
                    else {
                        $.blockUI({ message: '<h1><img src="/images/block.png" /> 数据添加出现问题</h1>' });
                        window.location.href = "/Error/ErrorPage.aspx";
                    }

                }
            });
        }

        //异步停止
        $().ajaxStop($.unblockUI); 
    </script>

    <link type="text/css" rel="Stylesheet" href="/css/form.css" />
</head>
<body>
    <div id="basic" class="myform">
        <form id="RegForm" method="post" action="">
        <h1>
            用户注册</h1>
        <p id="MessageBox">
        </p>
        <label>
            用户名 <span class="small">您在社区的名字</span>
        </label>
        <input type="text" id="txtUserName" />
        <label>
            Email <span class="small">请填写真实的Email</span>
        </label>
        <input type="text" id="txtEmail" />
        <label>
            密码 <span class="small">不能少于六位</span>
        </label>
        <input type="text" id="txtPassWord" />
        <button type="button" id="btnRegUser">
            注 册</button>
        <div class="spacer">
        </div>
        </form>
    </div>
</body>
</html>
