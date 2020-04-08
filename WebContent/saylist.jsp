<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<% pageContext.setAttribute("APP_PATH", request.getContextPath());%>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>留言</title>
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
								<a href="${APP_PATH }" title="Cloer">
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
<%--				<section class="blockGroup">--%>
<%--					<div class="list-archive">--%>
<%--							<ul>--%>
<%--							<c:forEach items="${diarys.list}" var="diarys">--%>
<%--								<li class="archive-item">--%>
<%--									<time><c:out value="${diarys.time}"></c:out>:</time><c:out value="${diarys.diary}"></c:out><span class="pid">ID：<c:out value="${diarys.diaryid}"></c:out></span>--%>
<%--								</li>--%>
<%--							</c:forEach>	--%>
<%--							</ul>--%>
<%--					</div>--%>
<%--				</section>--%>
<%--			<nav class="navigator" style="text-align: center;padding-left: 0">--%>
<%--				<c:if test="${diarys.hasPreviousPage}">--%>
<%--					<a href="${APP_PATH }/selectAllDiary?pn=${diarys.pageNum-1}">Previous page</a>--%>
<%--				</c:if>--%>
<%--				<c:if test="${diarys.hasNextPage}">--%>
<%--					<a href="${APP_PATH }/selectAllDiary?pn=${diarys.pageNum+1}">Next page</a>--%>
<%--				</c:if>--%>
<%--			</nav>--%>
			<div class="clear"></div>



		</div>


			<div class="content whisper-content leacots-content">
				<div class="cont w1000">
					<div class="whisper-list">
						<div class="item-box">
							<div class="review-version">
								<div class="form-box">
									<img class="banner-img" src="${pageContext.request.contextPath}/img/liuyan.jpg">
									<div class="form">
										<form class="layui-form" action="writediary" method="post">
											<div class="layui-form-item layui-form-text">
												<div class="layui-input-block">
													<textarea name="diary" id="diary" placeholder="既然来了，就说几句" class="layui-textarea"></textarea>
												</div>
											</div>
											<div class="layui-form-item">
												<div class="layui-input-block" name="diary1" id="diary1" style="text-align: right;">
													<button class="layui-btn definite">確定</button>
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="volume">
									全部留言 <span>10</span>
								</div>
								<c:forEach items="${diarys.list}" var="diarys">
								<div class="list-cont">
									<div class="cont">
										<div class="img">
											<img style="width: 50px;height: 50px" src="${pageContext.request.contextPath}/img/gravatar.jpg" alt="">
										</div>


										<div class="text">
											<p class="tit"><span class="name">吳亦凡</span><span class="data">${diarys.time}</span></p>
											<p class="ct">${diarys.diary}</p>
										</div>


									</div>
								</div>
								</c:forEach>
							</div>
						</div>


						<div class="btn-box">
							<button class="layui-btn layui-btn-primary"><a href="${APP_PATH }/selectAllDiary?pn=${diarys.pageNum-1}"> 上一页</a></button>
							<button class="layui-btn layui-btn-primary"> <a href="${APP_PATH }/selectAllDiary?pn=${diarys.pageNum+1}">下一页</a></button>
						</div>

					</div>

					<div id="demo" style="text-align: center;"></div>
				</div>
			</div>



		</div>



	</body>
</html>