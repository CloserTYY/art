<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<% pageContext.setAttribute("APP_PATH", request.getContextPath());%>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>用户登录</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<link type="image/vnd.microsoft.icon" href="${APP_PATH }/img/favicon.png" rel="shortcut icon">
		<link rel="stylesheet" href="${APP_PATH }/css/style.css"/>
		<script type="text/javascript" src="${APP_PATH }/js/top.min.js"></script>
		<script type="text/javascript" src="${APP_PATH }/js/top.js"></script>
		<script type="text/javascript" src="${APP_PATH }/js/jquery.1.4.2.min.js"></script>
		<!-- Bootstrap文件 -->
		<link rel="stylesheet" href="${APP_PATH}/bootstrap/css/bootstrap.min.css" >
		<script type="text/javascript" src="${APP_PATH}/bootstrap/js/bootstrap.min.js"></script>
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	</head>
	<body>
		<div class="bodycontent">
			<div id="midd">
				<header class="header"><!--页头 -->
					<div class="logonav">
						<div class="logo">
							<div class="logogravatar">
								<a href="${APP_PATH }" title="CLoser">
									<div class="blogname">Clo<span class="names">Ser</span></div>
								</a>
							</div>
						</div>
						<nav id="top-nav" class="winfo">
							<ul>
								<li><a href="${APP_PATH }">首页</a></li>
								<li><a href="${APP_PATH }/selectAllDiary">留言</a></li>
								<li><a href="${APP_PATH }/about.jsp">关于</a></li>
								<%
									Object name = request.getSession().getAttribute("userid");
									session.setAttribute("a",name);
									System.out.println(name);
									if(name!=null){

								%>
								<li><a href="${APP_PATH }">欢迎！${sessionScope.a}</a></li>


								<%
								}else {


								%>

								<li><a href="${APP_PATH }/login.jsp">登录</a></li>
								<li><a href="${APP_PATH }/register.jsp">注册</a></li>

								<%
									}
								%>

							</ul>
						</nav>
					</div>
				</header>
				<div class="clear"></div>
			  <div class="container">
				<h3 style="text-align: center;padding: 30px 0;">用户登录</h3>
				<p>
					带<span>*</span>为必填项,已用<span>*</span>标注,未满18岁请监护人帮忙完成登录！
				</p>
					<form action="login" method="post" >
					  <div class="form-group">
					    <label for="username">您的登录名<span>*</span></label>
					    <input type="text" class="form-control" id="username" name="username" placeholder="username" size="20">
					  </div>
					  <div class="form-group">
					    <label for="password">登录密码<span>*</span></label>
					    <input type="password" class="form-control" id="password" name="password" placeholder="Password">
					  </div>
					  <button type="submit" class="btn btn-default" style="margin-left: 500px;">Submit</button>
					</form>
				</div>
			</div>
			<div class="clear"></div>
		<footer>
			<div class="foote">
				&copy;2021 CLoser. All Rights Reserved. Theme by Guoliangjun Design
			</div>
		</footer>
		</div>
		<div id="share">
			<a id="totop" title="返回顶部">返回顶部</a>
			<a href="http://www.baidu.com" target="_blank" class="sina">百度搜索</a>
			<a href="http://www.bilbil.com"  target="_blank" class="tencent">一键追番</a>
		</div>
	</body>
</html>