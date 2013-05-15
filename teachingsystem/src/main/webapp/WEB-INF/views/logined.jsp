<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>教学系统</title>
<link href="../../css/common.css" rel="stylesheet" type="text/css" />
<link href="../../css/index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../js/jquery/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="../../js/jquery/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		
		
		
		
	});
</script>
</head>


<body>
	<div class="topDiv" id="topDiv">
		<div class="title" id="title">南开大学软件学院教学互动系统</div>
			<%@include file="_logout.jsp"%>
	</div>
	<div id="recentCourseType">

		<a id="recentCourseTypeTitle">最新课程分类</a> <a id="courseTypeMore" href="/handler/courseType/all">more..</a>
		<table width="200" border="1" id="recentCourseTypeTabel">
			<tr>
				<td align="center">课程分类编号</td>
				<td align="center">课程分类名称</td>
				<td align="center">操作</td>
			</tr>
			<c:forEach items="${recentCourseTypes}" var="courseType">
				<tr>
					<td align="center">${courseType.id}</td>
					<td align="center">${courseType.name}</td>
					<td align="center">查看</td>
				</tr>
			</c:forEach>
		</table>
</div>

	<div id="recentMessage">	
		<a id="recentMessageTitle">最新通知</a> <a id="recentMessageMore" href="/handler/message/all?userId=${user.id}">more..</a>
		<table width="200" border="1" id="recentMessagesTable">
			<tr>
				<td align="center">通知id</td>
				<td align="center">通知标头</td>
				<td align="center">操作</td>
			</tr>
			<c:forEach items="${recentMessages}" var="message">
				<tr>
					<td align="center">${message.id}</td>
					<td align="center">${message.title}</td>
					<td align="center">查看</td>
				</tr>
			</c:forEach>
		</table>
	</div>


	<div id="recentCourse">

		<a id="recentCourseTitle">最新课程</a> <a id="courseMore">more..</a>
		<table width="200" border="1" id="courseTable">
			<tr>
				<td align="center">课程id</td>
				<td align="center">课程名称</td>
				<td align="center">开课老师</td>
				<td align="center">创建时间</td>
				<td align="center">操作</td>
			</tr>
			<c:forEach items="${recentCourses}" var="course">
				<tr>
					<td align="center">${course.id}</td>
					<td align="center">${course.name}</td>
					<td align="center">${course.username}</td>
					<td align="center">${course.createdTime}</td>
					<td align="center">查看</td>
				</tr>
			</c:forEach>
		</table>
	</div>

</body>
</html>
