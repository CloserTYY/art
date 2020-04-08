<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/7 0007
  Time: 15:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<SCRIPT LANGUAGE=javascript>
    <!--
    alert("注销成功！");                                            // 弹出错误信息

     window.location='http://49.233.213.166:8080/Blog_war_exploded/selectAllBlog' ;
    -->
</SCRIPT>
<%
    Object name = request.getSession().getAttribute("userid");
    if(name==null){
        System.out.println("注销成功啦");   }else{
        System.out.println("注销失败");
    }
%>


</body>
</html>
