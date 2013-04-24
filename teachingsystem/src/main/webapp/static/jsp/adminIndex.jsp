<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adminIndex.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="../css/adminIndex.css">
  </head>
  
  <body>
    <div id="mainbody">
    	<div id="logo">难学网</div>
    	<div style="height:50px;background-color: #388e8e;font-weight: bold;">
    	<div id="header">欢迎您，管理员</div><div style="padding-top:20px;"><a href="javascript:void(0)">退出</a></div>
    	</div>
    	<div id="left">
	    	<div id="manageMenu">
    			<ul>
    				<li><a href="#" onclick="">学生管理</a></li>
    				<li><a href="#" onclick="">教师管理</a></li>
    				<li><a href="#" onclick="">添加用户</a></li>
    			</ul>
	    	</div>
    	</div>
    	<div id="right">
	    	<div id="searchDiv">
	    		<div style="float:left;width:300px;">用户搜索:<input type="text" class="search"></div>
	    		<div id="searchTerms" style="width:600px;">
	    			<input type="radio" id="number" class="items" value="number"><label for="number">学工号</label>
	    			<input type="radio" id="name" class="items" value="name"><label for="name">姓名</label>
	    			<input type="button" class="items" value="提交" style="float:right;margin-right:80px;background-color: #cccccc;">
	    		</div>
	    	</div>
	    	<div id="contentDiv">
		    	<div style="display:block;">
		    		<ul>
		    			<li>用户ID</li>
		    			<li>学工号</li>
		    			<li>姓名</li>
		    			<li>邮箱</li>
		    			<li>操作</li>
		    			<li></li>
		    			<li></li>
		    			<li></li>
		    			<li></li>
		    			<li></li>
		    		</ul>
		    		<div></div>
		    	</div>
    	</div>
    </div>
    </div>
  </body>
</html>
