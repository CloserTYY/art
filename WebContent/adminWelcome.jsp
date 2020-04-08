<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% pageContext.setAttribute("APP_PATH", request.getContextPath());%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<title>欢迎页面</title>
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<link type="image/vnd.microsoft.icon" href="${APP_PATH }/img/favicon.png" rel="shortcut icon">
		<link rel="stylesheet" href="${APP_PATH }/css/style.css"/>
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
	</head>
	<body>
		<div class="bodycontent">
			<div id="midd">
				<header class="header"><!--页头 -->
					<div class="logonav">
						<div class="logo">
							<div class="logogravatar">
								<a href="${APP_PATH }" title="Closer">
									<div class="blogname">Sun<span class="names">Life</span></div>
								</a>
							</div>
						</div>
						<nav id="top-nav" class="winfo">
							<ul>
								<li><a href="${APP_PATH }">首页</a></li>
								<li><a href="${APP_PATH }/writeblog.jsp">写文章</a></li>
								<li><a href="${APP_PATH }/adminblog">管理文章</a></li>
								<li><a href="${APP_PATH }/writediary.jsp">写留言</a></li>
								<li><a href="${APP_PATH }/admindiary">管理留言</a></li>
								<li><a href="${APP_PATH }/getAllUser">管理用户</a></li>
							</ul>
						</nav>
					</div>
				</header>
				<div class="clear"></div>
				<div class="main">
					<h1 style="text-align: center;margin:300px 0;">欢迎用户[${requestScope.username}],${requestScope.msg}</h1>
				</div>	
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