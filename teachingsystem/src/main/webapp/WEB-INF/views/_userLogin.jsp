<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script type="text/javascript">
	$(document).ready(function(){
		
		$("#login").click(function(){
			
			var email = $("#email").val();
			var pwd = $("#pwd").val();
			var authCode = $("#authCode").val();
			//email格式验证
			var emailReg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
			if(!emailReg.test(email.trim())){
				alert("邮箱格式不对");
				$("#email").val("");
				return;
			}
			$("#email").val($("#email").val().trim());
			
			//pwd不可以为空
			if(pwd.trim() == ""){
				alert("密码不可以为空");
				return;
			}
			$("#pwd").val($("#pwd").val().trim());
			
			//authCode不可以为空
			if(authCode.trim() == ""){
				alert("验证码不可以为空");
				return;
			}
			$("#authCode").val($("#authCode").val().trim());
			
			window.location="/handler/user/login?email="+email+"&pwd="+pwd+"&authCode="+authCode;
			
		});
		
	});
</script>

<div id="userLogin">
		<span id="email1">邮箱：</span><br /> <input id="email" /> <br /> <span
			id="pwd1">密码：</span><br /> <input id="pwd" /> <br /> <span
			id="authCode1">验证码：</span><br /> <input id="authCode" /> <img
			title="看不清？点击刷新！" src="/handler/user/getAuthCode" id="authCodeImg" />
		<input type="button" value="登录" id="login" />
		<span id="erroMessage">${erro}</span>
</div>
