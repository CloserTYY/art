<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/1 0001
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script>
    window.onload = function(){ //设置当页面加载时执行
        var result = confirm("上传成功");
        if(result) //判断是否点击确定
            window.location ="http://49.233.213.166:8080/Blog_war_exploded/selectAllBlog" //确定的话游览器自身跳转
    }
</script>

</body>
</html>
