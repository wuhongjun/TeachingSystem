<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script type="text/javascript">

	function getUserList(name, email, pageIndex, pageSize){
		
		//window.location.href= "/handler/user/userPageList?"+"name="+name+"&"+"email="+email+"&"+"pageIndex="+pageIndex+"&"+"pageSize="+pageSize;
		alert("开始ajax请求");
		$.ajax({   
				url: "/handler/user/userPageList?"+"name="+name+"&"+"email="+email+"&"+"pageIndex="+pageIndex+"&"+"pageSize="+pageSize,  
				type:"POST",
				dataType:"html",
				cache:false,
				contentType:"text/html; charset=UTF-8",
				success:function(data){
					$("#userPageList").empty();
					$("#userPageList").html(data);
				}
			});
	}
	
	
	function skipOnePage(pageIndex, pageSize){
		var name = $("#name").val();
		var email = $("#email").val();
		getUserList(name, email, pageIndex, pageSize);
	}
	
	


	$(document).ready(function(){
		
		$("#addUser").click(function(){
			window.location.href= "/handler/user/addUser";
		});
		
		$("#skip").click(function(){
			var name = $("#name").val();
			var email = $("#email").val();
			var pageIndex = $("#pageSkipTo").val();
			var totalPageNum = $("#totalPageNum").val();
			
			var reg = /^[0-9]*[1-9][0-9]*$/;
			if(!reg.test(pageIndex)){
				alert("跳转的页数只能为正整数！");
				return;
			}
			
			if(pageIndex > totalPageNum){
				alert("查询的页数不能超过总页数！");
				return ;
			}
			var pageSize = $("#pageSize").val();
			getUserList(name, email, pageIndex, pageSize);
			
		});
	
		
		
	});

	
</script>



<table border="1">
<tr>
	<td>id</td>
	<td>姓名</td>
	<td>email</td>
	<td>number</td>
</tr>
<c:forEach items="${usersPage.data}" var="user">
	<tr>
		<td>${user.id}</td>
		<td>${user.name}</td>
		<td>${user.email}</td>
		<td>${user.number}</td>
	</tr>
</c:forEach>

</table>

<div>
	<c:if test="${usersPage.currentPageNum != 1}"><input type="button" value="上一页" id="prePage" onclick="skipOnePage(${usersPage.currentPageNum-1,${usersPage.pageSize})"/>&nbsp;</c:if>
	
	<span>当前第${usersPage.currentPageNum}页</span>&nbsp;&nbsp;
	<span>总共<input type="text" id="totalPageNum" readonly="readonly" value="${usersPage.totalPageNum}"/>页</span>&nbsp;
	<span>每页</span>
	<select id="pageSize">
		<c:forEach var="index" items="1,2,3,4">
			<option value="${index*5}" <c:if test="${usersPage.pageSize==index*5}">selected="selected"</c:if>  >${index*5}</option>
		</c:forEach>
	</select>
	<span>条</span>
	<c:if test="${usersPage.currentPageNum != usersPage.totalPageNum}"><input type="button" value="下一页" id="nextPage" onclick="skipOnePage(${usersPage.currentPageNum+1,${usersPage.pageSize})"/></c:if>
	&nbsp;&nbsp;
	<span>跳转到第</span>
	<input type="text" id="pageSkipTo"/>
	<span>页</span>&nbsp;
	<input type="button" value="跳转" id="skip"/>
</div>