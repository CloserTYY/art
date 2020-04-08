<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<% pageContext.setAttribute("APP_PATH", request.getContextPath());%>  
<!DOCTYPE html>
<html>
	<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width; initial-scale=1.4; minimum-scale=1.0; maximum-scale=2.0"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="image/vnd.microsoft.icon" href="${APP_PATH }/img/favicon.png" rel="shortcut icon">
    <title>登录</title>
    <script src="${APP_PATH }/js/jquery.1.4.2.min.js"></script>
	<link href="${APP_PATH }/css/logo.css" type="text/css" rel="stylesheet"/>
        <link rel="stylesheet" href="css/vegas.min.css">
        <link rel="stylesheet" href="css/styles.min.css">
        <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
</head>
<body>
<div class="wrapper ">
<%--    <div class="bg">--%>
        <div class="homepage-header">

<%--        </div>--%>


        <div class="froyo-frame login-body ">
        <div class="admin-face">
            <div class="face-img">
            <img src="${APP_PATH}/img/gravatar1.jpg" alt="logo">
        </div>
        </div>
        <h1 class="admin-login-tittle">「从现在开始，为每一天写下一篇记录」</h1>
        <div class="admin-login-form">
            <form class="form" action="login" method="post" autocomplete="off">
                <div class="admin-name"><input name="username" type="text" placeholder="用户名"></div>
                <div class="admin-password"><input name="password" type="password" placeholder="密码"></div>
                <div class="admin-button"><button type="submit" id="login-button">登录</button></div>
                <div class="admin-button"><a id="login-button" href="${APP_PATH}">返回首页</a></div>
            </form>
        </div>
    </div>
    </div>
</div>

<script type="text/javascript">
    $('#login-button').click(function(event){
        event.preventDefault();
        $('form').fadeOut(500);
        $('.wrapper').addClass('form-success');
        $('.form').submit();
    });
</script>
<style type="text/css">

    .bg{
        /*background: url("/img/bg.jpg");*/
/*background-color: #0f0f0f;*/
/*        background: url("/img/bg.jpg");*/
        background-image: url("img/bg.jpg");


    }
</style>



<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/bar.js"></script>
<script src="js/vegas.min.js"></script>
<script src="js/app.min.js"></script>
</body>
</html>