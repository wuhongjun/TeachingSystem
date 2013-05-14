<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>教学系统</title>
<link href="../../css/common.css" rel="stylesheet" type="text/css" />
<link href="../../css/index.css" rel="stylesheet" type="text/css" />
<link href="../../css/messageDetail.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../js/jquery/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="../../js/jquery/jquery-ui.js"></script>
<script type="text/javascript">
	
</script>
</head>


<body>
	<div class="topDiv" id="topDiv">
		<div class="title" id="title">南开大学软件学院教学互动系统</div>
			<%@include file="_logout.jsp"%>
	</div>
	<div id="messageDetail">
		<a id="messageId1">消息标识:</a>   <a id="messageId">${message.id}</a><br/>
		<a id="title1">消息标题:</a>   <a id="title">${message.title}</a><br/>
		<a id="createdTime1">创建时间:</a>   <a id="createdTime">${message.createdTime}</a><br/>
		<a id="coursename1">课程名称:</a>   <a id="coursename">${message.coursename}</a><br/>
		<a id="content1">消息内容:</a>   <a id="content">${message.content}</a><br/>
	</div>
	

</body>
</html>
