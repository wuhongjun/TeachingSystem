<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'allCourse.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="../css/allCourse.css">
  </head>
  
  <body>
  	<%@include file="public.jsp" %>
    <div id="mainBody">
    	<div id="mianContent">
	    	<div class="courseDiv" style="margin-left:40px;">
	    		<h3><a href="jsp/courseList.jsp">人文科学</a></h3>
	    			<ul>
	    				<li><a href="jsp/courseList.jsp">文学</a></li>
	    				<li><a href="">艺术</a></li>
	    				<li><a href="">社会</a></li>
	    			</ul>
	    	</div>
	    	<div class="clear"></div>
	    	<div class="courseDiv" style="margin-left:370px;margin-top:-300px;">
	    		<h3>人文科学</h3>
	    			<ul>
	    				<li><a href="">文学</a></li>
	    				<li><a href="">艺术</a></li>
	    				<li><a href="">社会</a></li>
	    			</ul>
	    	</div>
	    	<div class="clear"></div>
	    	<div class="courseDiv" style="margin-left:690px;margin-top:-300px;">
	    		<h3>人文科学</h3>
	    			<ul>
	    				<li><a href="">文学</a></li>
	    				<li><a href="">艺术</a></li>
	    				<li><a href="">社会</a></li>
	    			</ul>
	    	</div>
    	</div>
    </div>
  </body>
</html>
