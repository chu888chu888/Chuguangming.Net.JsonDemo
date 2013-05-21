<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AjaxAddUserInfo.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<%--
    <script type="text/javascript" src="js/jquery/jquery-1.3.2-vsdoc.js"></script>--%>

    <script type="text/javascript" src="js/jquery/jquery-1.3.2.js"></script>

    <script type="text/javascript">
        function OK() {
            var params = $('input').serialize(); //序列化表单的值
            alert(params.txtUserName);
        }
    </script>

</head>
<body>
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
    <button type="button" id="btnRegUser" onclick="OK()">
        注 册</button>
    <div class="spacer">
    </div>
    </form>
</body>
</html>
