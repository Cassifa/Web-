<%--
  Created by IntelliJ IDEA.
  User: Li Feifei
  Date: 2024/4/4
  Time: 1:51
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登录页面</title>
    <style type="text/css">
        .myTable{
            border: 2px solid #0000FF;
            margin-top: 15%;
        }
        .inputs{
            width: 95%;
            height: 25px;
            color: #999;
        }
        .btn{
            background-color:#4a8bd6;
            width: 90%;
            height: 40px;
            border: none;
            color: aliceblue;
            text-decoration: underline; /* 添加白色下划线 */
            margin: 10px;
        }
    </style>
</head>
<body>
<form onSubmit="return custCheck()" action="../LoginServlet" method="get">
    <table rules=none cellspacing=0  width=340 align=center class="myTable">
        <!-- 提示 -->
        <tr height="40">
            <td colspan="2">
                <h2 align="center">
                    <font color="blue">登录</font>
                </h2>
            </td>
        </tr>
        <!-- 邮箱 -->
        <tr>
            <td height=40 align="center" width=80>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱</td>
            <td>
                <input class="inputs"
                       placeholder="请输入邮箱"
                       onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
                       onBlur="if(!value){value=defaultValue; this.style.color='#999'}"
                       name="email" id="email">
            </td>
        </tr>
        <!-- 密码 -->
        <tr>
            <td height=40 align="center" width=80>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</td>
            <td height=40>
                <input class="inputs"
                       placeholder="请输入密码"
                       onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
                       onBlur="if(!value){value=defaultValue; this.style.color='#999'}"
                       name="password" id="password">
            </td>
        </tr>

        <!-- 登录 -->
        <tr height="40">
            <td colspan="2" align="center">
                <button width="340" height="40" class="btn" >登录</button>
            </td>
        </tr>

    </table>
</form>
<script language="JavaScript" type="text/javascript">
    function custCheck() {
        var email = document.getElementById("email");
        var password = document.getElementById("password");
        if (email.value === "" || email.value === "请输入邮箱") {
            alert("邮箱不能为空!");
            return false;
        } else if (password.value === "" || password.value === "请输入密码") {
            alert("密码不能为空!");
            return false;
        }

        //合理性校验
        if (email.value.indexOf('@') === -1) {
            alert("请输入正确的邮箱!");
            return false;
        }
        return true;
    }
</script>

</body>
</html>
