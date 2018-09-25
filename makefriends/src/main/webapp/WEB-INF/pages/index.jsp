<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
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
</script>
</head>
<body>
  <%@ include file="header.jsp" %>
	<div class="banner">
		<div class="container">
			<div class="banner_info">
				<h3>Millions of verified Members</h3>
				<a onclick="validateLogin('findInformation.action')" class="hvr-shutter-out-horizontal">完善个人资料</a>
			</div>
		</div>
		<div class="profile_search">
			<div class="container wrap_1">
			
				<form action="findObj.action" method="post">
					<div class="search_top">
						<div class="inline-block">
							<label class="gender_1">我在寻找 :</label>
							<div class="age_box1"
								style="max-width: 100%; display: inline-block;">
								<select name="sex">
									<option value="">* 选择性别</option>
									<option value="男">男</option>
									<option value="女">女</option>
								</select>
							</div>
						</div>
						<div class="inline-block">
							<label class="gender_1">位于 :</label>
							<div class="age_box1"
								style="max-width: 100%; display: inline-block;">
								<select name="position">
									<option value="">* 省</option>
									<option value="贵州">贵州</option>
									<option value="湖南省">湖南省</option>
									<option value="广东省">广东省</option>
									<option value="浙江省">浙江省</option>
									<option value="湖北省">湖北省</option>
								</select>
							</div>
						</div>
						<div class="inline-block">
							<label class="gender_1">有兴趣 :</label>
							<div class="age_box1"
								style="max-width: 100%; display: inline-block;">
								<select name="hobby">
								<option value="">* 选择兴趣</option>
									<option value="运动与冒险">运动与冒险</option>
									<option value="电影与娱乐">电影与娱乐</option>
									<option value="艺术与科学">艺术与科学</option>
									<option value="技术与知识">技术与知识</option>
									<option value="时尚与潮流">时尚与潮流</option>
								</select>
							</div>
						</div>
					</div>
					<div class="inline-block">
						<div class="age_box2" style="max-width: 220px;">
							<label class="gender_1">年龄 :</label> <input class="transparent" name="age" 
								placeholder="从:" style="width: 34%;" type="text" value="">&nbsp;-&nbsp;<input
								class="transparent" placeholder="到:" style="width: 34%;"
								type="text" value="">
						</div>
					</div>
					<div class="inline-block">
						<label class="gender_1">状态 :</label>
						<div class="age_box1"
							style="max-width: 100%; display: inline-block;">
							<select name="marriage">
								<option value="">* 选择状态</option>
								<option value="单身">单身</option>
								<option value="已婚">已婚</option>
								<option value="恋爱">恋爱</option>
								<option value="复杂">复杂</option>
							</select>
						</div>
					</div>
					<div class="submit inline-block">
						<input id="submit-btn" class="hvr-wobble-vertical" type="submit"
						 value="匹配对象">
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="copyrights">
		Collect from <a href="http://www.cssmoban.com/" title="网站模板">网站模板</a>
	</div>
	<div class="grid_1">
		<div class="container">
			<h1>匹配对象</h1>
			<div class="heart-divider">
				<span class="grey-line"></span> <i class="fa fa-heart pink-heart"></i>
				<i class="fa fa-heart grey-heart"></i> <span class="grey-line"></span>
			</div>
			<ul id="flexiselDemo3">
			
			
			<c:forEach items="${showObj}" var="f">
				<li>
					<div class="col_1">
						<a href="toAddfriends.action?user_id=${f.user_id}"> <img src="images/1.jpg" alt="" class="hover-animation image-zoom-in img-responsive" />
							<h3>
								<span class="m_3">
								<P class="" >${f.income}</P></span><br>
								<P class="" >${f.age}</P>
								<P class="" >${f.hobby}</P>
								<P class="" >${f.position}</P><br>
								<P class="" >${f.marriage}</P>
							</h3>
						</a>
					</div>
				</li>
			</c:forEach>
			
			
			
				<li><div class="col_1">
						<a href="view_profile.html"> <img src="images/2.jpg" alt=""
							class="hover-animation image-zoom-in img-responsive" />
							<div class="layer m_1 hidden-link hover-animation delay1 fade-in">
								<div class="center-middle">About Her</div>
							</div>
							<h3>
								<span class="m_3">Profile ID : MI-387412</span><br>28,
								Christian, Australia<br>Corporate
							</h3></a>
					</div></li>
				
			</ul>
			<script type="text/javascript">
				$(window).load(function() {
					$("#flexiselDemo3").flexisel({
						visibleItems : 6,
						animationSpeed : 1000,
						autoPlay : false,
						autoPlaySpeed : 3000,
						pauseOnHover : true,
						enableResponsiveBreakpoints : true,
						responsiveBreakpoints : {
							portrait : {
								changePoint : 480,
								visibleItems : 1
							},
							landscape : {
								changePoint : 640,
								visibleItems : 2
							},
							tablet : {
								changePoint : 768,
								visibleItems : 3
							}
						}
					});

				});
			</script>
			<script type="text/javascript" src="js/jquery.flexisel.js"></script>
		</div>
	</div>
  <%@ include file="footer.jsp" %>
</body>
</html>