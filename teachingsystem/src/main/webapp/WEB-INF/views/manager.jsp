<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" href="../../css/jquery-ui.css" rel="stylesheet">
<script type="text/javascript" src="../../js/jquery/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="../../js/jquery/jquery-ui.js"></script>
<title>用户管理</title>


</head>

<body>
<h4>欢迎来到用户管理页面</h4><br/>
<img alt="" src="/handler/user/getAuthCode" id="authCode"/>
<input type="button" id="addUser"value="添加用户" class="ui-button"/><br/>
<span>用户名</span><input type="text" name="name" id="name" value="${user.name}"/><span>邮箱</span><input type="text" name="email" id="email" value="${user.email}"/><input type="button" id="search" value="查询">

<div id="userPageList">
	<%@include file="_userPageList.jsp" %>	
</div>

</body>
</html>