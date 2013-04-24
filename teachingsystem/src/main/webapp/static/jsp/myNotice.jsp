<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'myNotice.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="../css/myNotice.css"></link>
  </head>
  
  <body>
   	<%@include file="public.jsp"%>
   	<div id="mainBody">
		  		<div class="title"><div style="float:left;padding-left:15px;">课程通知</div></div><div style="float:right;margin-right:50px;"><a href="jsp/index.jsp">返回</a></div>
	  			<div class="courseList">
		  			<ul>
		  				<li><div class="topic">操作系统停课通知</div><div class="notice">因老师出差，操作系统课于下周三（3月24号）停课一次，望同学们相互转告！</div></li>
		  				<li><div class="topic">操作系统停课通知</div><div class="notice">因老师出差，操作系统课于下周三（3月24号）停课一次，望同学们相互转告！</div></li>
		  				<li><div class="topic">操作系统停课通知</div><div class="notice">因老师出差，操作系统课于下周三（3月24号）停课一次，望同学们相互转告！</div></li>
		  				<li><div class="topic">操作系统停课通知</div><div class="notice">因老师出差，操作系统课于下周三（3月24号）停课一次，望同学们相互转告！</div></li>
		  			</ul>
		  			<div class="pagination">
		  				<span style="margin-left:50px;"><a href="">上一页</a></span><span style="margin-left:550px;"><a href="">下一页</a></span>
		  			</div>
	  			</div>
  		</div>
  </body>
</html>
