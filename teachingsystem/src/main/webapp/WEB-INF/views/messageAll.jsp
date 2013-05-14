<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>教学系统</title>
<link href="../../css/common.css" rel="stylesheet" type="text/css" />
<link href="../../css/index.css" rel="stylesheet" type="text/css" />
<link href="../../css/messageAll.css" rel="stylesheet" type="text/css" />
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
	
	<div id="allMessage">
		<table width="200" border="1" id="messagesTable">
			<tr>
				<td align="center">通知id</td>
				<td align="center">通知标头</td>
				<td align="center">操作</td>
			</tr>
			<c:forEach items="${messages}" var="message">
				<tr>
					<td align="center">${message.id}</td>
					<td align="center">${message.title}</td>
					<td align="center"><a href="/handler/message/detail?messageId=${message.id}">查看</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	

</body>
</html>
