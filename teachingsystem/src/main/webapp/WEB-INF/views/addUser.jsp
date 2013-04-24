<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="../../js/jquery/jquery-1.9.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加用户</title>

<script type="text/javascript">
	$(document).ready(function(){
		
		$("#deleteRole").hide();
		
		$("#deleteRole").click(function(){
			$("#role2").remove();
			$(this).hide();
			$("#addRole").show();
		});
		$("#addRole").click(function(){
			$("#role1").after('<select name="role" id="role2"><option value="1" selected="selected">老师</option><option value="2">学生</option></select>');
			$(this).hide();
			$("#deleteRole").show();
		});
		
		
		$("#userInfoForm").submit(function(){
			//姓名不可以为空
			if($("#name").val().trim() == ""){
				alert("姓名不可以为空");
				return false;
			}
			$("#name").val($("#name").val().trim());
			
			
			//email不可以为空
			if($("#email").val().trim() == ""){
				alert("邮箱不可以为空");
				return false;
			}
			
			//email格式验证
			var emailReg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
			if(!emailReg.test($("#email").val().trim())){
				alert("邮箱格式不对");
				$("#email").val("");
				return false;
			}
			$("#email").val($("#email").val().trim());
			
			//number不可以为空
			if($("#number").val().trim() == ""){
				alert("编号不可以为空");
				return false;
			}
			
			var numberReg = /^[0-9a-zA-Z]{5,10}$/;
			if(!numberReg.test($("#number").val().trim())){
				alert("number格式不对,必须为5到10位的数字或者字母！");
				$("#number").val("");
				return false;
			}
			$("#number").val($("#number").val().trim());
			
			return true;
		});
		
	});
	
</script>

</head>
<body>
<span>${erro}</span>
<form action="/handler/user/saveUser" method="post" id="userInfoForm">
	姓名:<input type="text" name="name" id="name"/><br/>
	email:<input type="text" name="email" id="email"/><br/>
	编号:<input type="text" name="number" id="number"/><br/>
	角色:
	<select name="role" id="role1">
		<option value="1">老师</option>
		<option value="2" selected="selected">学生</option>
	</select>
	<input type="button" value="添加角色" id="addRole"/>
	<input type="button" value="删除角色" id="deleteRole"/><br/>
	<input type="submit" value="提交">
</form>
	
</body>
</html>