<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>教学系统</title>
<link href="../../css/common.css" rel="stylesheet" type="text/css" />
<link href="../../css/index.css" rel="stylesheet" type="text/css" />
<link href="../../css/courseTypesAll.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../js/jquery/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="../../js/jquery/jquery-ui.js"></script>
</head>


<body>
	<div class="topDiv" id="topDiv">
		<div class="title" id="title">南开大学软件学院教学互动系统</div>
			<%@include file="_logout.jsp"%>
	</div>
	
	<div id="allCourseTypes">
		<table width="200" border="1" id="courseTypesTable">
			<tr>
				<td align="center">课程类型标识</td>
				<td align="center">课程类型名称</td>
				<td align="center">操作</td>
			</tr>
			<c:forEach items="${courseTypes}" var="courseType">
				<tr>
					<td align="center">${courseType.id}</td>
					<td align="center">${courseType.name}</td>
					<td align="center"><a>查看课程</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	

</body>
</html>
