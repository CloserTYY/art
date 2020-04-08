<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<% pageContext.setAttribute("APP_PATH", request.getContextPath());%>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>about页面</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<link type="image/vnd.microsoft.icon" href="${APP_PATH }/img/favicon.png" rel="shortcut icon">
		<link rel="stylesheet" href="${APP_PATH }/css/style.css"/>
		<script type="text/javascript" src="${APP_PATH }/js/top.min.js"></script>
		<script type="text/javascript" src="${APP_PATH }/js/top.js"></script>
		<script type="text/javascript" src="${APP_PATH }/js/jquery.1.4.2.min.js"></script>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/layui.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	</head>
	<body>
		<div class="bodycontent">
			<div id="midd">
				<header class="header"><!--页头 -->
					<div class="logonav">
						<div class="logo">
							<div class="logogravatar">
								<a href="${APP_PATH }" title="Closer">
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


				<div class="about-content">
					<div class="w1000">
						<div class="item info">
							<div class="title">
								<h3>我的介绍</h3>
							</div>
							<div class="cont">
								<img style="width: 700px;height: 400px" src="${pageContext.request.contextPath}/img/unsplash2.jpg">
								<div class="per-info">
									<p>
										<span class="name">小明</span><br />
										<span class="age">24岁</span><br />
										<span class="Career">java ，后端工程师</span><br />
										<span class="interest">爱好旅游,打游戏</span>
									</p>
								</div>
							</div>
						</div>
						<div class="item tool">
							<div class="title">
								<h3>我的技能</h3>
							</div>
							<div class="layui-fluid">
								<div class="layui-row">
									<div class="layui-col-xs6 layui-col-sm3 layui-col-md3">
										<div class="cont-box">
											<img src="${pageContext.request.contextPath}/img/gr_img2.jpg">
											<p>80%</p>
										</div>
									</div>
									<div class="layui-col-xs6 layui-col-sm3 layui-col-md3">
										<div class="cont-box">
											<img src="${pageContext.request.contextPath}/img/gr_img3.jpg">
											<p>80%</p>
										</div>
									</div>
									<div class="layui-col-xs6 layui-col-sm3 layui-col-md3">
										<div class="cont-box">
											<img src="${pageContext.request.contextPath}/img/gr_img4.jpg">
											<p>80%</p>
										</div>
									</div>
									<div class="layui-col-xs6 layui-col-sm3 layui-col-md3">
										<div class="cont-box">
											<img src="${pageContext.request.contextPath}/img/gr_img5.jpg">
											<p>80%</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="item contact">
							<div class="title">
								<h3>联系方式</h3>
							</div>
							<div class="cont">
								<img style="height: 160px;width: 160px" src="${pageContext.request.contextPath}/img/gravatar.jpg">
								<div class="text">
									<p class="WeChat">微信：<span>1234567890</span></p>
									<p class="qq">qq：<span>123456789</span></p>
									<p class="iphone">电话：<span>123456789</span></p>
								</div>
							</div>
						</div>
					</div>
				</div>














				<div class="clear"></div>
				<section class="blockGroup">

					<article class="single">	
						<h3>简介</h3>
						<p>基于spring+springmvc+mybatis+mysql制作的个人博客</p>
						<p>这个个人博客主要功能有写博客文章和日记，浏览博客与日记</p>
						<h3>运用知识点</h3>
						<ul>
							<li>spring mvc</li>
							<li>spring</li>
							<li>mybatis</li>
							<li>css/js</li>
							<li>jquery</li>
						</ul>
						<h3>运行环境</h3>
						<ul>
							<li>Eclipse</li>
							<li>Mysql</li>
							<li>ssm框架所需要的jar包</li>
							<li>ckeditor编辑器</li>
							<li>Tomcat服务器</li>
						</ul>
					</article>
				</section>
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
			<a href="http://www.baidu.com" target="_blank" class="sina">百度查询</a>
			<a href="http://www.bilbil.com"  target="_blank" class="tencent">一键追番</a>
		</div>
	</body>
</html>