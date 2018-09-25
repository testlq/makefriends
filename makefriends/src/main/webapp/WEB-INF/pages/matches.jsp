<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Matches</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Marital Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<link href="css/bootstrap-3.1.1.min.css" rel='stylesheet'
	type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='https://fonts.googleapis.com/css?family=Oswald:300,400,700'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700'
	rel='stylesheet' type='text/css'>
<!----font-Awesome----->
<link href="css/font-awesome.css" rel="stylesheet">
<!----font-Awesome----->
<script>
	$(document).ready(function() {
		$(".dropdown").hover(function() {
			$('.dropdown-menu', this).stop(true, true).slideDown("fast");
			$(this).toggleClass('open');
		}, function() {
			$('.dropdown-menu', this).stop(true, true).slideUp("fast");
			$(this).toggleClass('open');
		});
	});
  
	
	function findFriendsDetail(id){
		 $.getJSON("findFriendDetail.action?user_id="+id, function(data){
            	  var username = document.getElementById("username");
            	  if(data.obj.username!=null){
            	  	username.innerText = data.obj.username;
            	  }
            	  
            	  var age = document.getElementById("age");
            	  if(data.obj.age!=null){
            	  	age.innerText = data.obj.age;
            	  }
            	  
            	  var email = document.getElementById("email");
            	  if(data.obj.email!=null){
            		  email.innerText = data.obj.email;
            	  }
            	  
            	  var sex = document.getElementById("sex");
            	  if(data.obj.sex!=null){
            	  	sex.innerText = data.obj.sex;
            	  }
            	  
            	  var weight = document.getElementById("weight");
            	  if(data.obj.weight!=null){
            	 	 weight.innerText = data.obj.weight;
            	  }
            	  
            	  var height = document.getElementById("height");
            	  if(data.obj.height!=null){
            	 	 height.innerText = data.obj.height;
            	  }
            	  
            	  var bloodtype = document.getElementById("bloodtype");
            	  if(data.obj.bloodtype!=null){
            		  bloodtype.innerText = data.obj.bloodtype;
            	  }
            	  
            	  var star = document.getElementById("star");
            	  if(data.obj.star!=null){
            	  	star.innerText = data.obj.star;
            	  }
            	  
            	  var marriage = document.getElementById("marriage");
            	  if(data.obj.marriage!=null){
            	  marriage.innerText = data.obj.marriage;
            	  }
            	  
            	  var position = document.getElementById("position");
            	  if(data.obj.position!=null){
            		  position.innerText = data.obj.position;
            	  }
            	  
            	  var hobby = document.getElementById("hobby");
            	  if(data.obj.hobby!=null){
            		  hobby.innerText = data.obj.hobby;
            	  }
            	  
            	  var school = document.getElementById("school");
            	  if(data.obj.school!=null){
            	 	 school.innerText = data.obj.school;
            	  }
            	  
            	  var major = document.getElementById("major");
            	  if(data.obj.major!=null){
            	 	 major.innerText = data.obj.major;
            	  }
            	  
            	  var income = document.getElementById("income");
            	  if(data.obj.income!=null){
            		  income.innerText = data.obj.income;   
            	  }
       });
	}
</script>
</head>
<body>
 <%@ include file="header.jsp" %>
	<div class="grid_3">
		<div class="container">
			<div class="breadcrumb1">
				<ul>
					<a href="index.html"><i class="fa fa-home home_1"></i></a>
					<span class="divider">&nbsp;|&nbsp;</span>
					<li class="current-page">我的好友</li>
				</ul>
			</div>
			<div class="col-md-9 profile_left2">
			
			
			
			
			
			
			<c:forEach items="${allFriends}" var="f">
				<div class="profile_top">
					<a href="view_profile.html">
						<div class="col-sm-3 profile_left-top">
							<img src="images/a5.jpg" class="img-responsive" alt="" />
						</div>
						<div class="col-sm-3">
							<ul class="login_details1">
								<li><p>${f.content}</p></li>
							</ul>
						</div>
						<div class="col-sm-6">
							<table class="table_working_hours">
								<tbody>
									<tr class="opened">
										<td class="day_label1">用户名:</td>
										<td class="day_value">${f.username}</td>
									</tr>
									<tr class="opened_1">
										<td class="day_label1">年龄:</td>
										<td class="day_value">${f.age}</td>
									</tr>
									<tr class="opened_1">
										<td class="day_label1">邮箱:</td>
										<td class="day_value">${f.email}</td>
									</tr>
									<tr class="opened">
										<td class="day_label1">性别:</td>
										<td class="day_value">${f.sex}</td>
									</tr>
								</tbody>
							</table>
							<div class="buttons">
								<a href="email.action?user_id=${f.user_id}"><div class="vertical">发送邮件</div></a>
								<a href="chat.html"><div class="vertical">发送消息</div></a>
								<a href="#"><div class="vertical" onclick="findFriendsDetail(${f.user_id})">详细资料</div></a>
								<a href="deleteFriends.action?user_id=${f.user_id}"><div class="vertical">删除好友</div></a>
							</div>
						</div>
						<div class="clearfix"></div>
					</a>
				</div>
			</c:forEach>
				
				
				
				
				
				
				
				<!-- <ul class="pagination">
					<li class="active"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
				</ul> -->
			</div>
			
			
			<div class="col-md-3 match_right">
				<ul class="menu">
					<li class="item1"><h3 class="m_2">用户名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id="username"></a></h3></li>
					<li class="item1"><h3 class="m_2">年龄&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id="age"></a></h3></li>
					<li class="item1"><h3 class="m_2">邮箱&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id="email"></a></h3></li>
					<li class="item1"><h3 class="m_2">性别&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id="sex"></a></h3></li>
					<li class="item1"><h3 class="m_2">体重&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id="weight"></a></h3></li>
					<li class="item1"><h3 class="m_2">身高&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id="height"></a></h3></li>
					<li class="item1"><h3 class="m_2">血型&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id="bloodtype"></a></h3></li>
					<li class="item1"><h3 class="m_2">星座&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id="star"></a></h3></li> 
					<li class="item1"><h3 class="m_2">婚姻状态&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id="marriage"></a></h3></li>
					<li class="item1"><h3 class="m_2">位置&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id="position"></a></h3></li>
					<li class="item1"><h3 class="m_2">爱好&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id="hobby"></a></h3></li>
					<li class="item1"><h3 class="m_2">毕业院校&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id="school"></a></h3></li>
					<li class="item1"><h3 class="m_2">所学专业&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id="major"></a></h3></li>
					<li class="item1"><h3 class="m_2">年收入&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id="income"></a></h3></li>
				</ul>
			</div>
			
			
			<div class="clearfix"></div>
		</div>
	</div>
	 <%@ include file="footer.jsp" %>
</body>
</html>
