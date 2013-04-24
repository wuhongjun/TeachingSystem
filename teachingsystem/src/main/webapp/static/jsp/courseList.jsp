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
	<link rel="stylesheet" type="text/css" href="../css/courseList.css"></link>
  </head>
  
  <body>
  		<%@include file="public.jsp"%>
  		<div id="mainBody">
		  		<div class="title"><div style="float:left;margin-left:50px;">理工类</div><div class="search" style="float:right;margin-right:20px;">课程检索：<input type="text" name="courseName"><input type="button" value="搜索" onclick="" style="margin-left:10px;"></div></div>
	  			<div class="courseList">
		  			<ul>
		  				<li><div class="number"><a href="../jsp/courseDetail.jsp">1</a></div><div class="crsename"><a href="../jsp/courseDetail.jsp">操作系统原理</a></div><div class="tname">教师：john</div></li>
		  				<li><div class="number"><a href="../jsp/courseDetail.jsp">2</a></div><div class="crsename"><a href="../jsp/courseDetail.jsp">数据结构与算法设计</a></div><div class="tname">教师：john</div></li>
		  				<li><div class="number"><a href="../jsp/courseDetail.jsp">3</a></div><div class="crsename"><a href="../jsp/courseDetail.jsp">三维图像处理</a></div><div class="tname">教师：john</div></li>
		  			</ul>
		  			<div class="pagination">
		  				<span style="margin-left:50px;"><a href="">上一页</a></span><span style="margin-left:550px;"><a href="">下一页</a></span>
		  			</div>
	  			</div>
  		</div>
  </body>
</html>
