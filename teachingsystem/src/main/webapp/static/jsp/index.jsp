<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>难学网</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="../css/index.css">
  </head>
  
  <body>
  		<%@include file="public.jsp" %>
    	<!-- 首页 -->
    	<div id="mainBody">
    	<div id="mainContenet">
    		<div class="recommend">
    		<div class="title" style="height:35px;background:url(images/bg1.jpg);padding-top:15px;padding-left:25px;">精品推荐</div>
    			<ul>
    				<li></li>
    				<li></li>
    				<li></li>
    			</ul>
    		</div>
    		<div class="right">
    			<div id="guestDiv"  style="display:block;">
		    		<div style="height:50px;background:url(../images/bg2.jpg);padding-left:25px;"><div style="padding-top:15px;">登录</div></div>
		    		<div id="loginDiv">
		    			<div style="height:50px;"><span>用户名</span><input type="text" class="uname" name="name" style="margin-left:19px;"></div>
		    			<div style="height:50px;"><span style="letter-spacing: 18px;">密码</span><input type="password" class="pwd" name="password"></div>
		    			<div style="padding-left:100px;"><input type="button" value="登录" style="width:100px;" onclick=""></div>
		    		</div>
	    		</div>
	    		<div id="userDiv" style="display:none;">
	    			<div style="height:50px;background:url(images/bg2.jpg);padding-left:25px;"><div style="padding-top:15px;">新消息</div></div>
		    		<div id="noticeDiv">
		    			<ul>
		    				<li></li>
		    				<li></li>
		    				<li></li>
		    				<li></li>
		    				<li></li>
		    			</ul>
		    		</div>
	    		</div>
    		</div>
    	</div>

    	<div id="courseClassify">
	    	<div style="background:url(images/bg3.jpg);height:50px;">
	    	<div class="title" style="float:left;padding-top:15px;padding-left:25px;">课程分类</div>
     		<div class="courseList" style="width:250px;height:150px;float:left;margin-left:10px;margin-top:50px;">
    			<h3><a href="../jsp/courseList.jsp">人文科学</a></h3>
    			<ul>
    				<li><a href="../jsp/courseList.jsp">文学</a></li>
    				<li><a href="">艺术</a></li>
    				<li><a href="">社会</a></li>
    			</ul>
    			
    		</div>
    		<div class="courseList" style="float:left;width:250px;margin-left:10px;margin-top:50px;">
    			<h3>人文科学</h3>
    			<ul>
    				<li><a href="">文学</a></li>
    				<li><a href="">艺术</a></li>
    				<li><a href="">社会</a></li>
    			</ul>
    		</div>
    		<div class="courseList" style="float:left;width:250px;margin-left:10px;margin-top:50px;">
    			<h3>人文科学</h3>
    			<ul>
    				<li><a href="">文学</a></li>
    				<li><a href="">艺术</a></li>
    				<li><a href="">社会</a></li>
    			</ul>
    		</div>
    		<div style="float:right;width:100px;margin-top:50px;margin-right:80px;"><a href="../jsp/allCourse.jsp">more...</a></div>
    	</div>
    </div>
    </div>
  </body>
</html>
