<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adminLogin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="../css/adminLogin.css">
  </head>
  	
  <body>
    <div id="mainBody">
	    <div id="header">
	    	<div style="font-size:24px;float:left;letter-spacing: 10px;"><span style="color:#b87333;font-size:30px;">难学网</span>超级管理员入口</div><div style="float:right;margin-top:8px;"><a href="jsp/index.jsp">去首页</a></div>
	    </div>
    	<div id="loginDiv">
    		<form action="" method="post">
    			<div class="login_input">
	    			<div><label for="username" style="text-indent: 10px;">用户名</label><input type="text" id="username" class="username" value="用户名" style="color:#cccccc;"></div><br>
	    			<div><label for="password" style="text-indent: 10px;letter-spacing: 15px;">密码</label><input type="password" id="username" class="password"></div><br>
	    			<div class="subDiv"><input type="button" value="登录" style="width: 100px"></div>
    			</div>	
    		</form>
    	</div>
    </div>
  </body>
</html>
