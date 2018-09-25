 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>View_profile</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Marital Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='https://fonts.googleapis.com/css?family=Oswald:300,400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700' rel='stylesheet' type='text/css'>
<!----font-Awesome----->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!----font-Awesome----->
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});

</script>
</head>
<body>
  <%@ include file="header.jsp" %>
 
<div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
     <ul>
        <a href="toIndex.action"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page">添加好友</li>
     </ul>
   </div>
   
   <%-- <form action="addfriends.action?user_id=${toAddfriends.user_id}" method="post"> --%>
   	<div class="profile">
   	 <div class="col-md-8 profile_left">
   	 
   	 	<h2>个人资料 Id :${toAddfriends.user_id}</h2>
   	 	<div class="col_3">
   	        <div class="col-sm-4 row_2">
				<div class="flexslider">
					 <ul class="slides">
						<li data-thumb="images/p1.jpg">
							<img src="images/p1.jpg" />
						</li>
					 </ul>
				  </div>
			</div>
			<div class="col-sm-8 row_1">
				<table class="table_working_hours">
		        	<tbody>
						<tr class="opened_1">
							<td class="day_label">用户名 </td>
							<td class="day_value">${toAddfriends.username}</td>
						</tr>
						<tr class="opened_1">
							<td class="day_label">年龄 </td>
							<td class="day_value">${toAddfriends.age}</td>
						</tr>
		        		<tr class="opened_1">
							<td class="day_label">邮箱 </td>
							<td class="day_value">${toAddfriends.email}</td>
						</tr>
						<tr class="opened_1">
							<td class="day_label">性别 </td>
							<td class="day_value">${toAddfriends.sex}</td>
						</tr>
						<tr class="opened_1">
							<td class="day_label">个性签名 </td>
							<td class="day_value">${toAddfriends.content}</td>
						</tr>
					   
				    </tbody>
				</table>
				
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="col_4">
		    <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
			   <ul id="myTab" class="nav nav-tabs nav-tabs1" role="tablist">
				  <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">资料完善</a></li>
			   </ul>
			   <div id="myTabContent" class="tab-content">
				  <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
				    <div class="basic_1">
				    	<h3>基本信息</h3>
				    	<div class="col-md-6 basic_1-left">
				    	  <table class="table_working_hours">
				        	<tbody>
								 <tr class="height">
									<td class="height">身高:</td>
									<td class="height">${toAddfriends.height}</td>
								 </tr>
								<tr class="opened">
									<td class="day_label">体重 :</td>
									<td>${toAddfriends.weight}</td>
								</tr>
								<tr class="opened">
									<td class="day_label">血型 :</td>
									<td class="day_value">${toAddfriends.bloodtype}</td>
								</tr>
								<tr class="opened">
									<td class="day_label">星座 :</td>
									<td class="day_value">${toAddfriends.star}</td>
								</tr>
								
						    </tbody>
				          </table>
				         </div>
				         <div class="col-md-6 basic_1-left">
				          <table class="table_working_hours">
				        	<tbody>
								<tr class="opened">
									<td class="day_label"> 婚姻状态 :</td>
									<td class="day_value">${toAddfriends.marriage}</td>
								</tr>
								<tr class="opened">
									<td class="day_label">位置:</td>
									<td class="day_value">${toAddfriends.position}</td>
								</tr>
								<tr class="closed">
									<td class="day_label">学历 :</td>
									<td class="day_value closed">${toAddfriends.education}</td>
								</tr>
						    </tbody>
				        </table>
				        </div>
				        <div class="clearfix"> </div>
				    </div>
				    <div class="basic_1">
				    	<h3>兴趣爱好</h3>
				    	<div class="col-md-6 basic_1-left">
				    	  <table class="table_working_hours">
				        	<tbody>
				        		<tr class="opened">
									<td class="day_label">爱好:</td>
									<td class="day_value">${toAddfriends.hobby}</td>
								</tr>			        									   
							 </tbody>
				          </table>
				         </div>
				         <div class="col-md-6 basic_1-left">
				          <table class="table_working_hours">
				        	<tbody>
				        		
							</tbody>
				        </table>
				        </div>
				        <div class="clearfix"> </div>
				    </div>
				    <div class="basic_1 basic_2">
				    	<h3>教育背景</h3>
				    	<div class="basic_1-left">
				    	  <table class="table_working_hours">
				        	<tbody>
				        		<tr class="opened">
									<td class="day_label">毕业院校   :</td>
									<td >${toAddfriends.school}</td>
								</tr>
				        		<tr class="opened">
									<td class="day_label">所学专业 :</td>
									<td >${toAddfriends.major}</td>
								</tr>
						
							    <tr class="opened">
									<td class="day_label">年收入 :</td>
									<td>${toAddfriends.income}</td>
								</tr>
							 </tbody>
				          </table>
				         </div>
				         <div class="clearfix"> </div>
				    </div>
				  </div>
				  <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
				    <div class="basic_3">
				    	<h4>Family Details</h4>
				    	<div class="basic_1 basic_2">
				    	<h3>Basics</h3>
				    	<div class="col-md-6 basic_1-left">
				    	  <table class="table_working_hours">
				        	<tbody>
				        		
							 </tbody>
				          </table>
				         </div>
				       </div>
				    </div>
				 </div>
				 <div role="tabpanel" class="tab-pane fade" id="profile1" aria-labelledby="profile-tab1">
				    <div class="basic_1 basic_2">
				       <div class="basic_1-left">
				    	  <table class="table_working_hours">
				        	<tbody>
							 </tbody>
				          </table>
				        </div>
				     </div>
				 </div>
		     </div>
		  </div>
	   </div>
   	 </div>
     
        </div>
         
		<!-- </form> -->
       <div class="clearfix"> </div>
    </div>
  </div>
	<div style="text-align:center"><button class="hvr-shutter-out-horizontal" onclick="addfriends('addfriends.action?user_id=${toAddfriends.user_id}')"/>添加好友</button></div>
 <%@ include file="footer.jsp" %>


 
<!-- FlexSlider -->
<script defer src="js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<script>
// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
});
</script>   
</body>
</html>	