<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% pageContext.setAttribute("APP_PATH", request.getContextPath());%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">--%>
<!DOCTYPE html>
<html>
	<head>
<%--		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">--%>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%--		<meta name="viewport" content="width=device-width; initial-scale=1.4; minimum-scale=1.0; maximum-scale=2.0"/>--%>
<%--		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">--%>
		<title>CLoser</title>

	<link type="text/css" href="css/styless.css" rel="stylesheet" />
	<script type="text/javascript" src="js/tools.js"></script>
	<script type="text/javascript" src="js/js.js"></script>
	<script type="text/javascript" src="js/shubiao.js"></script>


		<link type="image/vnd.microsoft.icon" href="${APP_PATH }/img/favicon.png" rel="shortcut icon">
		<link rel="stylesheet" href="${APP_PATH }/css/style.css"/>
<%--	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style6.css">--%>
    <link rel="stylesheet" href="${APP_PATH }/css/layui.css"/>
    <link rel="stylesheet" href="${APP_PATH }/css/main.css"/>
<%--		<link rel="stylesheet" href="live2d/css/live2d.css" />--%>
		<script src="https://eqcn.ajz.miesnfu.com/wp-content/plugins/wp-3d-pony/live2dw/lib/L2Dwidget.min.js"></script>



        <link rel="stylesheet" type="text/css" href="assets/waifu.css"/>
		<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>

		<script type="text/javascript" src="${APP_PATH }/js/top.min.js"></script>
		<script type="text/javascript" src="${APP_PATH }/js/top.js"></script>
		<script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/1.8.0/jquery.js"></script> 
		<script type="text/javascript">
jQuery(document).ready(function($) {
    $.fn.smartFloat = function() {
        var position = function(element) {
            var top = element.position().top,
            pos = element.css("position");
            $(window).scroll(function() {
                var scrolls = $(this).scrollTop();
                if (scrolls > top) {
                    if (window.XMLHttpRequest) {
                        element.css({
                            position: "fixed",
                            top:0
                            
                        });
                    } else {
                        element.css({
                            top: scrolls
                        });
                    }
                } else {
                    element.css({
                        position: "absolute",
                        top: top
                    });
                }
            });
        };
        return $(this).each(function() {
            position($(this));
        });
    };
    //绑定,将引号中的内容替换成你想要下拉的模块的ID或者CLASS名字,如"#ABC",".ABC"
    $("#author").smartFloat();
});
		</script>
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	</head>
	<body background="${pageContext.request.contextPath}/img/bg.jpg" style="background-size: cover;background-repeat: no-repeat " >
<%--	background-repeat: no-repeat--%>
	 <div >
		<div class="bodycontent">
			<div id="midd">
				<div class="ddd">
				<header class="header ddd1"><!--页头 -->
					<div class="logonav">
						<div class="logo">
							<div class="logogravatar">
								<a href="${APP_PATH }" title="SunLife">
									<div class="blogname">Clo<span class="names">Ser</span></div>
								</a>
							</div>
						</div>
						<nav id="top-nav" class="winfo">
							<ul>
								<li><a href="${APP_PATH }">首页</a></li>
								<%
									Object namea = request.getSession().getAttribute("userid");
									session.setAttribute("a",namea);
									System.out.println(namea);
									if(namea!=null){

								%>
								<li><a href="${APP_PATH }/writeblog.jsp">写文章</a></li>


								<%
								}else {

								}


								%>



								<li><a href="${APP_PATH }/selectAllDiary">留言</a></li>
								<li><a href="${APP_PATH }/about.jsp">关于</a></li>
								<%
									Object name = request.getSession().getAttribute("userid");
									session.setAttribute("a",name);
									System.out.println(name);
									if(name!=null){

								%>
								<li><a href="${APP_PATH }">欢迎！${sessionScope.a}</a></li>
								<li><a href="${APP_PATH }/intisession"><strong>注销登录</strong></a></li>


								<%
									}else {


								%>

								<li><a href="${APP_PATH }/login.jsp"><strong>登录</strong></a></li>
								<li><a href="${APP_PATH }/register.jsp"><strong>注册</strong></a></li>

								<%
									}
								%>
								<%
//									if(name!=null){

										%>


								<%

//									}else{}
								%>
							</ul>
						</nav>
					</div>
				</header>

                    <div class="banner">
                        <div class="cont w1000">
                            <div class="title">
                                <h3>木枝叶<br />博客</h3>
                                <h4>一个前端辣鸡的不行的后端程序员</h4>
                            </div>
                            <div class="amount">
                                <p><span class="text">访问量</span><span class="access">1000</span></p>
                                <p><span class="text">日志</span><span class="daily-record">1000</span></p>
                            </div>
                        </div>
                    </div>



<%--					<div class="grid" id="grid">--%>
					<div class="wrap" id="wrap">
						<ul class="content"></ul>
						<a href="javascript:;" class="prev">&#60;</a>
						<a href="javascript:;" class="next">&#62;</a>
					</div>
<%--					</div>>--%>




				</div>



<%--				<div class="clear"></div>--%>



<%--				<div  class="main"><!--文章列表-->--%>
<%--&lt;%&ndash;					<div class="ddd1">&ndash;%&gt;--%>
<%--					<div class="ddd">--%>
<%--					<article class="ddd1">--%>
<%--						<section>--%>
<%--						<header class="crumbs">New Post 最新文章</header>--%>
<%--						<c:forEach items="${pageInfo.list }" var="blogs">--%>
<%--						<ul>--%>
<%--							<li class="main-item-left"></li>--%>
<%--							<li class="main-item-1"><a href="selectBlogById?blogid=<c:out value="${blogs.blogid}"/>"><c:out value="${blogs.blogtitle}"/></a></li>--%>
<%--&lt;%&ndash;                            <img style="width: 416px;height: 277px;" src="${pageContext.request.contextPath}/img/bg.jpg" alt=""></div>&ndash;%&gt;--%>
<%--							<li class="main-item-2">发布时间：<c:out value="${blogs.time}"/><span class="pid">ID：<c:out value="${blogs.blogid}"/></span></li>--%>
<%--							<!-- <li class="main-item-3"><c:out value="${blogs.article}"/></li> -->--%>
<%--&lt;%&ndash;							<img class="pc" src="${pageContext.request.contextPath}/img/bg2.jpg">&ndash;%&gt;--%>
<%--							<li class="main-item-4"><a href="selectBlogById?blogid=<c:out value="${blogs.blogid}"/>"><i>阅读全文</i></a></li>--%>
<%--							<div class="clear"></div>--%>
<%--							<li class="main-item-left"></li>--%>
<%--						</ul>--%>
<%--						</c:forEach>--%>
<%--						</section>--%>
<%--					</article>--%>
<%--					</div>--%>
<%--&lt;%&ndash;					</div>>&ndash;%&gt;--%>
<%--				</div>--%>







<%--                <div class="fff">--%>
<%--				<div class="ddd">--%>

<%--					<aside class="ddd1">--%>
<%--						<section>--%>
<%--							<header class="aside-title">TYY</header>--%>
<%--							<ul>--%>
<%--								<li class="aside-tag"><a href="http://www.bilbil.com/" target="_blank">落雨之音</a></li>--%>
<%--								<li class="aside-tag">Closer</li>--%>
<%--								<li class="aside-tag">CLoser</li>--%>
<%--							</ul>--%>
<%--						</section>--%>

<%--						<div class="clear"></div>--%>

<%--						<section id="author">--%>
<%--							<header class="aside-title">Author</header>--%>
<%--							<div class="about-me">--%>
<%--								<div class="profile">--%>
<%--									<div class="info">--%>
<%--										<h1>Closer<span class="born">Born in：2020/2/20</span></h1>--%>
<%--							            <p>Guoliangjun Design</p>--%>
<%--							            <p>&copy; 2020 落雨之音</p>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--						</section>--%>
<%--					</aside>--%>
<%--				</div>--%>

<%--				</div>--%>

			</div>
			<div class="clear"></div>

<%--&lt;%&ndash;			<div class="fff">&ndash;%&gt;--%>
<%--			<nav class="navigator">--%>
<%--				<c:if test="${pageInfo.hasPreviousPage}">--%>
<%--					<a href="${APP_PATH }/selectAllBlog?pn=${pageInfo.pageNum-1}"><strong>上一页</strong></a>--%>
<%--				</c:if>--%>
<%--				<c:if test="${pageInfo.hasNextPage}">--%>
<%--					<a href="${APP_PATH }/selectAllBlog?pn=${pageInfo.pageNum+1}"><strong>下一页</strong></a>--%>
<%--				</c:if>--%>
<%--			</nav>--%>
<%--			</div>--%>

			<div class="clear"></div>
<%--/* 页角*/--%>
<%--        <div class="ccc">--%>
<%--		<footer>--%>
<%--&lt;%&ndash;			<div class="ddd">&ndash;%&gt;--%>
<%--			<div class="foote ">--%>
<%--				&copy;2021 CLoser. All Rights Reserved. Theme by Guoliangjun Design--%>
<%--			</div>--%>
<%--&lt;%&ndash;			</div>&ndash;%&gt;--%>
<%--		</footer>--%>
<%--		</div>--%>


		</div>
		<div id="share">
			<a id="totop" title="返回顶部">返回顶部</a>
			<a href="http://www.baidu.com" target="_blank" class="sina">百度</a>
			<a href="http://bilbil.com"  target="_blank" class="tencent">哔哩哔哩</a>
		</div>


 <div >
	 <div >
         <div class="content">
             <div class="cont w1000">
                 <div class="title">
        <span class="layui-breadcrumb" lay-separator="|">
          <a href="javascript:;" class="active">设计文章</a>
          <a href="javascript:;">前端文章</a>
          <a href="javascript:;">旅游杂记</a>
        </span>
                 </div>
                <c:forEach items="${pageInfo.list }" var="blogs">
                 <div class="list-item">
                     <div class="item">
                         <div class="layui-fluid">
                             <div class="layui-row">
                                 <div class="layui-col-xs12 layui-col-sm4 layui-col-md5">
                                     <div class="img"><img style="width: 420px;height: 280px;" src="${pageContext.request.contextPath}/img/bg.jpg" alt=""></div>
                                 </div>
                                 <div class="layui-col-xs12 layui-col-sm8 layui-col-md7">
                                     <div class="item-cont">
                                         <h3><c:out value="${blogs.blogtitle}"/><button class="layui-btn layui-btn-danger new-icon">new</button></h3>
                                         <h5>发布时间：<c:out value="${blogs.time}"/><span class="pid">ID：<c:out value="${blogs.blogid}"/></span></h5>
                                         <p>室内设计作为一门新兴的学科，尽管还只是近数十年的事，但是人们有意识地对自己生活、生产活动的室内进行安排布置，甚至美化装饰，赋予室内环境以所祈使的气氛，却早巳从人类文明伊始的时期就已存在</p>
                                         <a href="selectBlogById?blogid=<c:out value="${blogs.blogid}"/>" class="go-icon">阅读全文</a>
                                     </div>
                                 </div>
                             </div>
                         </div>
                     </div>


				 </div>
				</c:forEach>

<%--					 						<c:forEach items="${pageInfo.list }" var="blogs">--%>
<%--					 						<ul>--%>
<%--					 							<li class="main-item-left"></li>--%>
<%--					 							<li class="main-item-1"><a href="selectBlogById?blogid=<c:out value="${blogs.blogid}"/>"><c:out value="${blogs.blogtitle}"/></a></li>--%>
<%--					 &lt;%&ndash;                            <img style="width: 416px;height: 277px;" src="${pageContext.request.contextPath}/img/bg.jpg" alt=""></div>&ndash;%&gt;--%>
<%--					 							<li class="main-item-2">发布时间：<c:out value="${blogs.time}"/><span class="pid">ID：<c:out value="${blogs.blogid}"/></span></li>--%>
<%--					 							<!-- <li class="main-item-3"><c:out value="${blogs.article}"/></li> -->--%>
<%--					 &lt;%&ndash;							<img class="pc" src="${pageContext.request.contextPath}/img/bg2.jpg">&ndash;%&gt;--%>
<%--					 							<li class="main-item-4"><a href="selectBlogById?blogid=<c:out value="${blogs.blogid}"/>"><i>阅读全文</i></a></li>--%>
<%--					 							<div class="clear"></div>--%>
<%--					 							<li class="main-item-left"></li>--%>
<%--					 						</ul>--%>
<%--					 						</c:forEach>--%>
<%--



				<div  class="main"><!--文章列表-->--%>
					 <%--&lt;%&ndash;					<div class="ddd1">&ndash;%&gt;--%>
					 <%--					<div class="ddd">--%>
					 <%--					<article class="ddd1">--%>
					 <%--						<section>--%>
					 <%--						<header class="crumbs">New Post 最新文章</header>--%>
					 <%--						<c:forEach items="${pageInfo.list }" var="blogs">--%>
					 <%--						<ul>--%>
					 <%--							<li class="main-item-left"></li>--%>
					 <%--							<li class="main-item-1"><a href="selectBlogById?blogid=<c:out value="${blogs.blogid}"/>"><c:out value="${blogs.blogtitle}"/></a></li>--%>
					 <%--&lt;%&ndash;                            <img style="width: 416px;height: 277px;" src="${pageContext.request.contextPath}/img/bg.jpg" alt=""></div>&ndash;%&gt;--%>
					 <%--							<li class="main-item-2">发布时间：<c:out value="${blogs.time}"/><span class="pid">ID：<c:out value="${blogs.blogid}"/></span></li>--%>
					 <%--							<!-- <li class="main-item-3"><c:out value="${blogs.article}"/></li> -->--%>
					 <%--&lt;%&ndash;							<img class="pc" src="${pageContext.request.contextPath}/img/bg2.jpg">&ndash;%&gt;--%>
					 <%--							<li class="main-item-4"><a href="selectBlogById?blogid=<c:out value="${blogs.blogid}"/>"><i>阅读全文</i></a></li>--%>
					 <%--							<div class="clear"></div>--%>
					 <%--							<li class="main-item-left"></li>--%>
					 <%--						</ul>--%>
					 <%--						</c:forEach>--%>
					 <%--						</section>--%>
					 <%--					</article>--%>
					 <%--					</div>--%>
					 <%--&lt;%&ndash;					</div>>&ndash;%&gt;--%>
					 <%--				</div>















                     --%>





<%--                 <nav class="navigator">--%>
<%--                   --%>
<%--                 </nav>--%>
                 <div class="btn-box">
                 <button class="layui-btn layui-btn-primary"><a href="${APP_PATH }/selectAllBlog?pn=${pageInfo.pageNum-1}"><strong>上一页</strong></a></button>
                 <button class="layui-btn layui-btn-primary"> <a href="${APP_PATH }/selectAllBlog?pn=${pageInfo.pageNum+1}"><strong>下一页</strong></a></button>
             </div>



<%--                 <div id="demo" style="text-align: center;">  <c:if test="${pageInfo.hasPreviousPage}">--%>
<%--                     <a href="${APP_PATH }/selectAllBlog?pn=${pageInfo.pageNum-1}"><strong>上一页</strong></a>--%>
<%--                 </c:if>--%>
<%--                     <c:if test="${pageInfo.hasNextPage}">--%>
<%--                         <a href="${APP_PATH }/selectAllBlog?pn=${pageInfo.pageNum+1}"><strong>下一页</strong></a>--%>
<%--                     </c:if></div>--%>



             </div>
         </div>
	 </div>
 </div>



<%--		<div class="waifu">--%>
<%--			<div class="waifu-tips"></div>--%>
<%--			<canvas id="live2d" width="280" height="250" class="live2d"></canvas>--%>
<%--			<div class="waifu-tool">--%>
<%--				<span class="fui-home"></span>--%>
<%--				<span class="fui-chat"></span>--%>
<%--				<span class="fui-eye"></span>--%>
<%--				<span class="fui-user"></span>--%>
<%--				<span class="fui-photo"></span>--%>
<%--				<span class="fui-info-circle"></span>--%>
<%--				<span class="fui-cross"></span>--%>
<%--			</div>--%>
<%--		</div>--%>

		<style>
			.pc{
				width: 1000px;
				height: 600px;

			}



		</style>
		<script>
			L2Dwidget.init({
				"model": {
					//jsonpath控制显示模型
					jsonPath:"${APP_PATH }/model/pio/model.json" },

				"display": {
					"position": "right", //看板娘的表现位置
					"width": 150,  //宽度
					"height": 262.5, //高度
					"hOffset": -60,  //水平
					"vOffset": -70,  //垂直
				},
				"mobile": {
					"show": true,
				},
				"react": {
					"opacityDefault": 1,//不透明度，可调
					"opacityOnHover": 0.2
				}
			});
		</script>





</div>


<%--	 鼠标点击文字--%>
	 <script type="text/javascript" src="${pageContext.request.contextPath}/js/shubiao.js">
		 (function(e){
			 // 点击事件触发生生元素等一系列动作的初始状态
			 var bombFlag = true;
			 // body节点
			 var elBody = document.getElementsByTagName("body")[0];
			 // 初始化文字数组下标
			 var a_idx = 0;
			 elBody.onclick = function(e) {
				 if(bombFlag){
					 // 坐标
					 var ev = e||event,//  IE浏览器兼容
							 x = ev.clientX,
							 y = ev.clientY;
					 // 随机产生文字颜色
					 var color1 = Math.floor((Math.random()*255));
					 var color2 = Math.floor((Math.random()*255));
					 var color3 = Math.floor((Math.random()*255));
					 // 初始化定时器
					 var _timer = null;
					 // 文字数组
					 var a = new Array("乐观", "❤" ,"积极", "向上", "自由", "正能量","民主", "元气满满", "开心" ,"快乐", "善良", "可爱", "暴富", "暴瘦","❤");
					 // 创建节点
					 var elSpan = document.createElement("span");
					 // 随机节点内容
					 a_idx = (a_idx + 1) % a.length;
					 // 添加内容到节点
					 elSpan.innerHTML = a[a_idx];
					 // 初始节点化样式
					 elSpan.style.zIndex = 999;
					 elSpan.style.position = "fixed";
					 elSpan.style.top = y -20 + "px",
							 elSpan.style.left = x -10 + "px";
					 elSpan.style.color = 'rgb('+color1+','+color2+','+color3+')';
					 elSpan.style.fontWeight = "bold";
					 elSpan.className = "floatSpan";
					 // 将元素追加到body中
					 elBody.appendChild(elSpan);
					 // 获取追加后的节点
					 var el = document.getElementsByClassName("floatSpan")[0];
					 // 初始化需要渐变的变量值
					 // top值
					 var cur_y = y - 20;
					 // 透明度
					 var cur_opacity = 1;
					 // 字体大小
					 var cur_fontSize = 14;
					 // 创建定时器
					 _timer = setInterval(function(){
						 // 渐变变量
						 cur_y += -10;
						 cur_opacity -= 0.1;
						 cur_fontSize += 1;
						 // 渐变变量赋值（因为有单位的关系 所以不能直接加减 通过中间变量来赋值）
						 el.style.top = cur_y + "px";
						 el.style.opacity = cur_opacity;
						 el.style.fontSize = cur_fontSize + "px";
					 },50);
					 // 时间到了之后清空定时器 清除刚才添加的元素 并且恢复点击触发事件
					 setTimeout(function(){
						 clearInterval(_timer);
						 elBody.removeChild(el);
						 bombFlag = true;
					 },500);
				 }
				 // 暂停点击触发事件
				 bombFlag = false;
			 };
		 })();

	 </script>

	</body>
</html>