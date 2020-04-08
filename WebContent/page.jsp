<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<% pageContext.setAttribute("APP_PATH", request.getContextPath());%>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title><c:out value="${blog.blogtitle}" /></title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<link type="image/vnd.microsoft.icon" href="${APP_PATH }/img/favicon.png" rel="shortcut icon">
		<link rel="stylesheet" href="${APP_PATH }/css/style.css"/>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/layui.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
		<script type="text/javascript" src="${APP_PATH }/js/top.min.js"></script>
		<script type="text/javascript" src="${APP_PATH }/js/top.js"></script>
		<script type="text/javascript" src="${APP_PATH }/js/jquery.1.4.2.min.js"></script>
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
				<div class="clear"></div>
<%--				<section class="blockGroup">--%>
<%--					<h2 class="s_title"><c:out value="${blog.blogtitle}" /></h2>--%>
<%--					<div class="views">--%>
<%--						<time>发布于:<c:out value="${blog.time}" /></time>- <c:out value="${blog.blogid}" /> 次检阅--%>
<%--					</div>--%>
<%--				<article class="single">--%>
<%--				<input type="hidden"  id="blogarticle"  value="${blog.article}">--%>

<%--				<script type="text/javascript">  --%>
<%--			        $(function() {  --%>
<%--			            var x =document.getElementById('blogarticle').value;--%>
<%--			            $("#text").html(x);--%>
<%--			       		 });  --%>
<%--			    </script>--%>

<%--&lt;%&ndash;					<c:out value="${blog.image}&ndash;%&gt;--%>




<%--                    <div align="center" class="imgg"><img class="pc" src="http://localhost:8080/Blog_war_exploded/${blog.image}"/></div>--%>
<%--&lt;%&ndash;				                                         http://49.233.213.166:8080/Blog_war_exploded/upload/a47f94f80a294c5b9006c94ba0596eed.jpg&ndash;%&gt;--%>

<%--    			<div id="text"></div>--%>

<%--				</article>--%>

<%--				</section>--%>
			</div>





            <div class="content whisper-content leacots-content details-content">
                <div class="cont w1000">
                    <div class="whisper-list">
                        <div class="item-box">
                            <div class="review-version">
                                <div class="form-box">
                                    <div class="article-cont">
                                        <div class="title">
                                            <h3><c:out value="${blog.blogtitle}" /></h3>
                                            <p class="cont-info"><span class="data"><c:out value="${blog.time}" /></span><span class="types">博客笔记</span></p>
                                        </div>
                                        <p>这是一篇博客这是一篇博客这是一篇博客这是一篇博客这是一篇博客这是一篇博客这是一篇博客这是一篇博客这是一篇博客这是一篇博客这是一篇博客这是一篇博客这是一篇博客这是一篇博客。</p>
                                        <img class="pc" src="http://localhost:8080/Blog_war_exploded/${blog.image}"/>
                                        <p>${blog.article}</p>
<%--                                        <p>炖好的鸡挂在架子上晾干，再一片片剁开，每只鸡剁的块数都是一样，然后把鸡肉放到提前调好的水中腌两个小时，水里面的调料也是爷爷自己去市场买来磨成粉的。锅里还有剩的鸡汤，用鸡汤煮好面叶上面漂着一层绿油油的葱花。</p>--%>
<%--                                        <p>以前爷爷都是用扁担一头面叶一头板鸡挑到街上摊位上卖，现在爷爷年纪大了，只能用三轮车推着。摊位摆好奶奶就会慢悠悠的拎着一个保温桶和一个小红桶过来，保温桶里装的是卤鸡蛋，小红桶留着装别人吃剩的骨头喂狗。他们只有晚上出摊，收完摊已经要9点钟了，回去还要洗一天用的抹布和衣服，爷爷奶奶都非常爱干净，摊上的所有抹布纱布都是白色的每天洗的一个油点都看不到。9年前奶奶去世了，爷爷奶奶青梅竹马感情非常好，奶奶去世的时候爷爷甚至还要求过把奶奶埋在院子里。现在爷爷有时候会偷偷跟我说，你奶奶昨天回来看我了，她还给我掖被子，我知道是她，我跟她说你别挂念我，我好的很 跑题了。</p>--%>
<%--                                        <p>昨天我给爷爷打电话，他跟我说他卖板鸡有人给他拍照，他问别人你拍我干嘛，那个人回答他说我给你照片放到网上，你生意会更好，我爷爷说你不用放网上我都不够卖的。</p>--%>
                                        <div class="btn-box">
                                            <button class="layui-btn layui-btn-primary">上一篇</button>
                                            <button class="layui-btn layui-btn-primary">下一篇</button>
                                        </div>
                                    </div>
                                    <div class="form">
                                        <form class="layui-form" action="writely?blogid=<c:out value="${blog.blogid}"/>" method="post">
                                            <div class="layui-form-item layui-form-text">
                                                <div class="layui-input-block">
                                                    <textarea name="ly" id="ly" placeholder="既然来了，就说几句" class="layui-textarea"></textarea>
                                                </div>
                                            </div>
                                            <div class="layui-form-item">
                                                <div class="layui-input-block" style="text-align: right;">
                                                    <input width="50px" type="text" id="name" name="name" placeholder="写下你的名字">
                                                    <button class="layui-btn definite">確定</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>



                                <div class="volume">
                                    全部留言 <span>10</span>
                                </div>
								<c:forEach items="${pageInfo.list }" var="ly">
                                <div class="list-cont">

                                    <div class="cont">
                                        <div class="img">
                                            <img style="height: 50px;width: 50px" src="${pageContext.request.contextPath}/img/gravatar.jpg" alt="">
                                        </div>
                                        <div class="text">
                                            <p class="tit"><span class="name"><c:out value="${ly.name}"/></span><span class="data"><c:out value="${ly.time}"/></span></p>
                                            <p class="ct"><c:out value="${ly.ly}"/>}</p>
                                        </div>
                                    </div>
                                </div>
								</c:forEach>


								<div class="btn-box">
									<button class="layui-btn layui-btn-primary"><a href="${APP_PATH }/selectAllDiary?pn=${diarys.pageNum-1}"> 上一页</a></button>
									<button class="layui-btn layui-btn-primary"> <a href="${APP_PATH }/selectAllDiary?pn=${diarys.pageNum+1}">下一页</a></button>
								</div>
                            </div>
                        </div>
                    </div>
                    <div id="demo" style="text-align: center;"></div>
                </div>
            </div>











			<div class="clear"></div>






<%--		<footer>--%>
<%--			<div class="foote">--%>
<%--				&copy;2021 CLoser. All Rights Reserved. Theme by Guoliangjun Design--%>
<%--			</div>--%>
<%--		</footer>--%>
		</div>
		<div id="share">
			<a id="totop" title="返回顶部">返回顶部</a>
			<a href="http://www.baidu.com" target="_blank" class="sina">百度</a>
			<a href="http://bilbil.com"  target="_blank" class="tencent">哔哩哔哩</a>
		</div>
		<style>
			/*.pc{*/
			/*	width: 1000px;*/
			/*	height: 600px;*/
            /*    .imgg{*/
            /*        max-width: 100%;*/
            /*    }*/


			/*}*/


		</style>
	</body>
</html>