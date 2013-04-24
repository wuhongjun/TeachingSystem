<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'courseDetail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<link rel="stylesheet" type="text/css" href="../css/courseDetail.css">

  </head>
  <link id="webfx-tab-style-sheet" type="text/css" rel="stylesheet" href="../css/tab.webfx.css" />
  <body>
  	<%@include file="public.jsp"%>
    	<div id="mainBody">
    		<div id="location">
    			<span style="float:left;"><a href="../jsp/courseList.jsp">我的课程</a>  ></span>
    			<span class="currentCourse" style="color:#0E0E47;"> 操作系统原理</span>
    		</div>	
    		<hr style="color:#cccccc;align:center;width:95%">
    		<div style="height:15px;font-weight:bold;padding-left:30px;"><a href="#" onclick="">添加父菜单</a></div>
    		<div id="below">
			    	<div class="tab-pane" id="tabPane1">
			
						<script type="text/javascript">
							tp1 = new WebFXTabPane( document.getElementById( "tabPane1" ) );
						</script>
			
					<div class="tab-page" id="tabPage1">
						<h2 class="tab">课程介绍</h2>
						<script type="text/javascript">tp1.addTabPage( document.getElementById( "tabPage1" ) );</script>
						<div id="introduce">
							<div id="currentLocation">课程介绍<div id="addNav"><a href="#" onclick="">添加</a></div></div>
							<div class="courseInfo"></div>
							<div style="margin-top:20px;">
								<div style="float:left;">授课教师：</div><div>李老师</div><br>
								<div class="clear"></div>
								<div style="float:left;">时间：</div><div>周一,3-4节</div><br>
								<div class="clear"></div>
								<div style="float:left">地点：</div><div>第二教学楼B204</div>
							</div>
					    </div>
						
					</div>
			
					<div class="tab-page" id="tabPage2">
						<h2 class="tab">教学大纲</h2>
						
						<script type="text/javascript">tp1.addTabPage( document.getElementById( "tabPage2" ) );</script>
						<div>
							<div id="currentLocation">教学大纲<div id="addNav"><a  href="#" onclick="">添加</a></div></div>
			
							<div style="margin-top:20px;">
								
							</div>
					    </div>
					</div>
			
					<div class="tab-page" id="tabPage3">
						<h2 class="tab">教学课件</h2>
						
						<script type="text/javascript">tp1.addTabPage( document.getElementById( "tabPage3" ) );</script>
						<div id="currentLocation">教学课件<div id="addNav"><a  href="#" onclick="">添加</a></div></div>
						<div id="tableDiv">
								<ul> 
									<li>编号</li> 
									<li class="t">主题</li> 
									<li class="r">附件</li> 
									<li>111</li> 
									<li class="t"></li>  
									<li class="r"><div class="download" onclick="">下载</div></li> 
									<li>222</li> 
									<li class="t"></li> 
									<li class="r"><div class="download" onclick="">下载</div></li> 
									<li>233</li> 
									<li class="t"></li>  
									<li class="r"><div class="download" onclick="">下载</div></li> 
									<li class="b">3444</li> 
									<li class="b t"></li> 
									<li class="b r"><div class="download" onclick="">下载</div></li> 
								</ul> 
								<div class="pagination">
		  							<span style="margin-left:100px;"><a href="">上一页</a></span><span style="margin-left:450px;"><a href="">下一页</a></span>
		  						</div>
						</div>
						
					</div>
			
					
					<div class="tab-page" id="tabPage5">
						<h2 class="tab">相关资源</h2>
						
						<script type="text/javascript">tp1.addTabPage( document.getElementById( "tabPage5" ) );</script>
						<div id="currentLocation">相关资源<div id="addNav"><a  href="#" onclick="">添加</a></div></div>
						<div id="tableDiv">
								<ul> 
									<li>编号</li> 
									<li class="t">主题</li> 
									<li class="r">附件</li> 
									<li>111</li> 
									<li class="t"></li>  
									<li class="r"><div class="download" onclick="">下载</div></li> 
									<li>222</li> 
									<li class="t"></li> 
									<li class="r"><div class="download" onclick="">下载</div></li> 
									<li>233</li> 
									<li class="t"></li>  
									<li class="r"><div class="download" onclick="">下载</div></li> 
									<li class="b">3444</li> 
									<li class="b t"></li> 
									<li class="b r"><div class="download" onclick="">下载</div></li> 
								</ul> 
								<div class="pagination">
		  							<span style="margin-left:100px;"><a href="">上一页</a></span><span style="margin-left:450px;"><a href="">下一页</a></span>
		  						</div>
						</div>
				
					</div>
				</div>
			</div>
			<div id="zyDiv">
				<h4 class="zyDiv" style="height:15px;">作业发布</h4>
				<div style="width:97%;padding-top:10px;background-color: #ffffff;height:300px;">
				<div id="tableDiv">
						<ul> 
							<li>编号</li> 
							<li class="t">主题</li> 
							<li class="r">文件</li> 
							<li>111</li> 
							<li class="t"></li>  
							<li class="r"><div class="sub" onclick="">提交</div></li> 
							<li>222</li> 
							<li class="t"></li> 
							<li class="r"><div class="sub" onclick="">提交</div></li> 
							<li>233</li> 
							<li class="t"></li>  
							<li class="r"><div class="sub" onclick="">提交</div></li> 
							<li class="b">3444</li> 
							<li class="b t"></li> 
							<li class="b r"><div class="sub" onclick="">提交</div></li> 
						</ul> 
						<div class="pagination" style="padding-top:15px;">
		  					<span style="margin-left:100px;"><a href="">上一页</a></span><span style="margin-left:450px;"><a href="">下一页</a></span>
		  				</div>
				</div>
				</div>
			</div>
		</div>
	<script type="text/javascript">
	//<![CDATA[
		setupAllTabs();
	//]]>
	</script>
	 <script type="text/javascript" src="../js/webfxlayout.js"></script>
	 <script type="text/javascript" src="../js/tabpane.js"></script>
  </body>
</html>
