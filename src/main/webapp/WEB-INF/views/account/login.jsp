<%--
  Created by IntelliJ IDEA.
  User: llm
  Date: 2018/6/22
  Time: 上午11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var = "ctx" value="${pageContext.request.contextPath }"></c:set>

<!DOCTYPE html>
<html lang="zh">
<head>
    <title>登录</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="cache-control" content="max-age=3600" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="keywords" content="">
    <meta http-equiv="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="${ctx }/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="${ctx }/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="${ctx }/resources/css/style.css" rel="stylesheet" type="text/css" />
    <link href="${ctx }/resources/css/location.css" rel="stylesheet" type="text/css" />
    <style>
        #myTabContent input{
            margin-top: 20px;
        }
        #myTabContent button{
            margin-top: 20px;
        }
        #remember-me-and-forget-password{
            color:#868e96!important;
            font-size:14px;
        }
    </style>

</head>
<body>

<!-- 导航栏 -->
<jsp:include page="../part/topNavi.jsp">
    <jsp:param name="top_navi" value="top_navi_div" />
</jsp:include>

<div class="container login-tab-div" style="width: 100%; max-width: 350px; margin-top: 100px">
    <ul class="nav nav-tabs" id="loginTab" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" id="login-tab" data-toggle="tab" href="#login"
               role="tab" aria-controls="home" aria-expanded="true">登录</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="register-tab" data-toggle="tab" href="#register"
               role="tab" aria-controls="home" aria-expanded="true">注册</a>
        </li>
    </ul>
    <c:if test="${param.login_error == 1}">
        <p style="color: red;margin-top: 1rem">${sessionScope.SPRING_SECURITY_LAST_EXCEPTION.message}</p>
    </c:if>
    <div class="tab-content" id="myTabContent">
        <div id="login" class="tab-pane fade show active" role="tabpanel" aria-labelledby="login-tab">
            <form class="form-signin" action="login" method="post" onsubmit="return loginValidation()">
                <label for="loginEmail" class="sr-only">Email address</label>
                <input type="email" name="loginEmail" id="loginEmail" class="form-control" placeholder="邮件地址">

                <label for="password" class="sr-only">Password</label>
                <input type="password" name="password" id="password" class="form-control" placeholder="密码">

                <div id="remember-me-and-forget-password" class="clearfix text-secondary" style="margin-top: 20px">
                    <input type="checkbox" class="float-left" style="margin-top: 4px; margin-right: 5px" name="remember-me" id="remember-me" aria-label="Checkbox for following text input">
                    <label for="remember-me" class="" >记住我</label>

                    <span class="float-right"><a href="${ctx}/forget-password">忘记密码</a></span>
                </div>

                <button class="btn btn-lg btn-primary btn-block" type="submit"> 点击登录</button>
            </form>
        </div>

        <div id="register" class="tab-pane fade" role="tabpanel" aria-labelledby="register-tab">
            <%--<form class="form-signin" onsubmit="return register()" method="post">--%>

            <label for="registerEmail" class="sr-only">邮箱地址</label>
            <input type="email" id="registerEmail" name="registerEmail" class="form-control" placeholder="请输入邮件地址">

            <label for="registerUserName" class="sr-only">用户昵称</label>
            <input id="registerUserName" name="registerUserName" class="form-control" placeholder="请输入用户昵称">

            <label for="registerPassword" class="sr-only">Password</label>
            <input type="password" name="password" id="registerPassword" class="form-control" placeholder="请输入密码">

            <label for="registerPassword2" class="sr-only">Password</label>
            <input type="password" id="registerPassword2" class="form-control" placeholder="请再次输入密码">

            <button class="btn btn-lg btn-primary btn-block" onclick="register()">点击注册</button>
            <%--</form>--%>
        </div>
    </div>

</div>

<script type="text/javascript" src="${ctx }/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${ctx }/resources/js/tether.min.js"></script>
<script type="text/javascript" src="${ctx }/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${ctx }/resources/js/layer/layer.js"></script>
<script type="text/javascript" src="${ctx }/resources/js/login.js"></script>
<script type="text/javascript">
    var ctx = "${ctx}";

    var loginArea = $("#login");
    var registerArea = $("#register");
    var isRegister = "${register}";
    if( isRegister ){
        // $("#register-tab").trigger("click");
        loginArea.removeClass("active");
        loginArea.removeClass("show");
        $("#login-tab").removeClass("active");
        registerArea.addClass("active");
        registerArea.addClass("show");
        $("#register-tab").addClass("active");
    }

    var signin_message = "${signin_message}";
    if( signin_message!=null && signin_message!=='' ){
        layer.msg(signin_message)
    }

</script>

</body>
</html>
