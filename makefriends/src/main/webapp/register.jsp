<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register</title>
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
	  <%@ include file="\WEB-INF\pages\header.jsp" %>
	<form method="post" action="register.action">
		<div class="grid_3">
			<div class="container">
				<div class="breadcrumb1">
					<ul>
						<a href="index.html"><i class="fa fa-home home_1"></i></a>
						<span class="divider">&nbsp;|&nbsp;</span>
						<li class="current-page">注册</li>
					</ul>
				</div>
				<div class="services">
					<div class="col-sm-6 login_left">
						<div class="form-group">
							<label for="edit-name">用户名 <span class="form-required"
								title="This field is required.">*</span></label> <input type="text"
								id="edit-name" name="username" value="" size="60" maxlength="60"
								class="form-text required">
						</div>
						<div class="form-group">
							<label for="edit-pass">密码 <span class="form-required"
								title="This field is required.">*</span></label> <input type="password"
								id="edit-pass" name="password" size="60" maxlength="128"
								class="form-text required">
						</div>
						<div class="form-group">
							<label for="edit-name">邮箱 <span class="form-required"
								title="This field is required.">*</span></label> <input type="text"
								id="edit-name" name="email" value="" size="60" maxlength="60"
								class="form-text required">
						</div>
						<div class="age_select">
							<label for="edit-pass">年龄<span class="form-required"
								title="This field is required.">*</span></label> <input type="text"
								id="edit-name" name="age" value="" size="60" maxlength="60"
								class="form-text required">
						</div>
					</div>
				</div>

				<div class="clearfix"></div>
			</div>
		</div>
		<div class="form-group form-group1">
			<label class="col-sm-7 control-lable" for="sex">性别 : </label>
			<div class="col-sm-5">
				<div class="radios">
					<label for="radio-01" class="label_radio"> <input
						type="radio" checked="" value="男" name="sex"> 男
					</label> <label for="radio-02" class="label_radio"> <input
						type="radio" value="女" name="sex"> 女
					</label>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="form-group">
			<label for="edit-name">个性签名 <span class="form-required"
				title="This field is required.">*</span></label>
			<textarea class="form-control bio" placeholder="" rows="3"
				name="content"></textarea>
		</div>

		<div class="form-actions">
			<input type="submit" id="edit-submit" name="op" value="提交"
				class="btn_1 submit">
		</div>
	</form>




 
	<div class="col-sm-6">
		<ul class="sharing">
			<li><a href="#" class="facebook" title="Facebook"><i
					class="fa fa-boxed fa-fw fa-facebook"></i> Share on Facebook</a></li>
			<li><a href="#" class="twitter" title="Twitter"><i
					class="fa fa-boxed fa-fw fa-twitter"></i> Tweet</a></li>
			<li><a href="#" class="google" title="Google"><i
					class="fa fa-boxed fa-fw fa-google-plus"></i> Share on Google+</a></li>
			<li><a href="#" class="linkedin" title="Linkedin"><i
					class="fa fa-boxed fa-fw fa-linkedin"></i> Share on LinkedIn</a></li>
			<li><a href="#" class="mail" title="Email"><i
					class="fa fa-boxed fa-fw fa-envelope-o"></i> E-mail</a></li>
		</ul>
	</div>
	<div class="clearfix"></div>
	</div>
	</div>
	</div>
	 <%@ include file="\WEB-INF\pages\footer.jsp" %>
</body>
</html>