<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<% pageContext.setAttribute("APP_PATH", request.getContextPath());%>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>SunLife</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<link type="image/vnd.microsoft.icon" href="${APP_PATH }/img/favicon.png" rel="shortcut icon">
		<link rel="stylesheet" href="${APP_PATH }/css/style.css"/>
		<script type="text/javascript" src="${APP_PATH }/js/top.min.js"></script>
		<script type="text/javascript" src="${APP_PATH }/js/top.js"></script>
		<script type="text/javascript" src="${APP_PATH }/js/jquery.1.4.2.min.js"></script>
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	</head>
	<body>
		<h1 style="text-align: center;">${requestScope.msg}</h1>
		<p style="text-align: center;padding-top: 100px;"><a href="${APP_PATH }/login.jsp">点击登录</a></p>
	</body>
</html>