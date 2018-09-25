  <%@page import="com.yc.bean.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="js/jquery.min.js"></script>


<div class="navbar navbar-inverse-blue navbar">



 			<!-- 验证是否已经登录 -->
			 <%User object = (User)session.getAttribute("user");%>
			 <script type="text/javascript">
			 	function validateLogin(h){
			 		var s = <%= object!=null %>;
			 		if(s){
			 			window.location.href=h;
			 		}else{
			 			alert("请登录！！！");
			 			window.location.href='login.action';
			 		} 
			 	}
			 	
			 	//登录、注册
			 	function validateLogin1(h,msg){
			 		var s = <%= object!=null %>;
			 		if(s){
			 			alert(msg);
			 			window.location.href='toIndex.action';
			 		}else{
			 			window.location.href=h;
			 		} 
			 	}
			 	
			 	//退出
			 	function loginOut(h){
			 		var s = <%= object!=null %>;
			 		if(s){
			 			window.location.href=h;
			 			alert('您已退出登录!!!');
			 		}else{
			 			alert('您还未登录');
			 			window.location.href='toIndex.action';
			 		} 
			 	}
			 	
			 	
			 	//登录之后才可以添加好友,不可重复添加好友
			 	function addfriends(h){
			 		var s = <%= object!=null %>;
			 		if(s){
			 			 $.post(h,function(data){
			 				 alert(data.errmsg);
			 			 });
			 		}else{
			 			alert("请登录！！！");
			 			window.location.href='login.action';
			 		} 
			 	}
			 </script>
			 
			 
			 
	<div class="navbar-inner">
		<div class="container">
			<div class="navigation">
				<nav id="colorNav">
					<ul>
						<li class="green"><a href="#" class="icon-home"></a>
							<ul>
								<li><a onclick="validateLogin1('login.jsp','您已登录,不能重复登录!!!')" >登录</a></li>
								<li><a onclick="validateLogin1('register.jsp','请先退出登录,再注册!!!')">注册</a></li>
								<li><a onclick="loginOut('loginout.action')">退出</a></li>
							</ul></li>
					</ul>
				</nav>
			</div>
	 
			
			<!-- 第一种方法 -->
			<% User user = (User)session.getAttribute("user"); 
				if(user!=null){
			%>
			<span style="color:white;">hello,<%=user.getUsername()%></span>
			<%} %>
			
			
				
			<!-- 第二种方法 -->
			<%-- <c:forEach items="${user}" var="user">
				<span style="color:white;">hello,${user.username}</span>
			</c:forEach> --%>
			 
			 
			
			<div class="pull-right">
				<nav class="navbar nav_bottom" role="navigation">
					<div class="navbar-header nav_2">
						<button type="button"
							class="navbar-toggle collapsed navbar-toggle1"
							data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							Menu <span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#"></a>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav nav_1">
							<li><a href="toIndex.action">首页</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">我的好友<span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a onclick="validateLogin('searchAllFriends.action')">所有好友</a></li>
								</ul></li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">我的消息<span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a onclick="validateLogin('myValidateInfo.action')">好友验证</a></li>
									<li><a href="#">好友消息</a></li>
									<li><a href="listEmail.action">邮件记录</a></li>
								</ul></li>

							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">动态<span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a onclick="validateLogin('myDynamic.action')">个人动态</a></li>
									<li><a onclick="validateLogin('showFriendsdynamic.action')">好友动态</a></li>
									<li><a onclick="validateLogin('showStrangerdynamic.action')">陌生人动态</a></li>
								</ul></li>
							<li class="last"><a href="contact.action">联系我们</a></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</nav>
			</div>
			<!-- end pull-right -->
			<div class="clearfix"></div>
		</div>
		<!-- end container -->
	</div>
	<!-- end navbar-inner -->
</div>

 