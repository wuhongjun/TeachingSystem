<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'myCourse.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="../css/stCourse.css">
  </head>
  
  <body>
  		<%@include file="public.jsp"%>
  		<div id="mainBody">
 				<div id="left">
			  		<span class="title">我的课程</span>
		  			<div class="courseList">
			  			<ul>
			  				<li><div class="crsename"><a href="../jsp/courseDetail.jsp">操作系统原理</a></div><div class="tname">教师：john</div></li>
			  				<li><div class="crsename"><a href="../jsp/courseDetail.jsp">数据结构与算法设计</a></div><div class="tname">教师：john</div></li>
			  				<li><div class="crsename"><a href="../jsp/courseDetail.jsp">三维图像处理</a></div><div class="tname">教师：john</div></li>
			  			</ul>
		  			</div>
	  			</div>
	  			<div id="right">
	  			<span class="title">可选课程</span>
	  			<div class="search" style="float:right;padding-left:30px;margin-right:20px;height:40px;font-size:14px;">课程检索：<input type="text" name="courseName"><input type="button" value="搜索" onclick="" style="margin-left:10px;"></div>
	  			<div style="padding-top:10px;">
	  				<ul>
	  					<li><div class="crsename"><a href="../jsp/courseDetail.jsp">操作系统原理</a></div></li>
	  					<li><div class="crsename"><a href="../jsp/courseDetail.jsp">数据结构与算法设计</a></div></li>
	  					<li><div class="crsename"><a href="../jsp/courseDetail.jsp">三维图像处理</a></div></li>
	  					<li><div class="crsename"><a href="../jsp/courseDetail.jsp">操作系统原理</a></div></li>
	  					<li><div class="crsename"><a href="../jsp/courseDetail.jsp">数据结构与算法设计</a></div></li>
	  					<li><div class="crsename"><a href="../jsp/courseDetail.jsp">三维图像处理</a></div></li>
	  				</ul>
	  				<div style="margin-top:20px;margin-left:15px;"><a href="../jsp/allCourse.jsp">more...</a></div>
	  			</div>
	  			</div>
  		</div>
  </body>
</html>
