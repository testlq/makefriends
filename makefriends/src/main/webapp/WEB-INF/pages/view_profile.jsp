
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>View_profile</title>
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
		
		
		if(${picture.size()>0}){
			$("#zero").remove();
		} 
	});
	
	
	function upload(){
		//$("#zero").remove();
		var path = $("#path").val();
		alert(path);
		$.ajax({
			url:'uploadPicture.action',
			type:'post',
			secureuri: false, 
			fileElementId: 'fu_UploadFile',
			dataType: 'json', 
			data:{'path':path}, 
			contentType:'multipart/form-data', 
			success: function(data) {
				alert(data);
				var str="";
				for(var i=0;i<data.obj.length;i++){
					str+="<li data-thumb='"+data.obj[i].path+"'><img src='"+data.obj[i].path+"'/></li>";
				}
				$("#p").html(str); 
			}
		});
	}
	
</script>
</head>
<body>
	<%@ include file="header.jsp"%>

	<div class="grid_3">
		<div class="container">
			<div class="breadcrumb1">
				<ul>
					<a href="toIndex.action"><i class="fa fa-home home_1"></i></a>
					<span class="divider">&nbsp;|&nbsp;</span>
					<li class="current-page">我的个人资料</li>
				</ul>
			</div>


			   
				 	<!-- 图片上传 -->
					<ul>
						<li class="day_label">上传个人照：</li>
						<li class="day_value"><input id="path" type="file" name="path" data-options="required:true" /></li>
						<li class="day_value"><input class="hvr-shutter-out-horizontal" type="submit" onclick="upload()" value="上传图片" /></li>
					</ul>
				 


			<form action="perfectAllInformation.action" method="post">
				<div class="profile">
					<div class="col-md-8 profile_left">
						<h2>个人资料 Id :${user.user_id}</h2>
						<div class="col_3">
							<div class="col-sm-4 row_2">
								<div class="flexslider">
									<ul class="slides" id="p">



										<!-- 显示图片 -->
										<c:if test="${pictures.size()>0}">
											<c:forEach items="${pictures}" var="p">
												<li data-thumb="${p.path}"><img src="${p.path}" /></li>
											</c:forEach>
										</c:if>
										<li id="zero" data-thumb="img/zero.jpg"><img
											src="img/zero.jpg" /></li>



									</ul>
								</div>
							</div>
							<div class="col-sm-8 row_1">
								<table class="table_working_hours">
									<tbody>
										<tr class="opened_1">
											<td class="day_label">用户名</td>
											<td class="day_value">${user.username}</td>
										</tr>
										<tr class="opened_1">
											<td class="day_label">年龄</td>
											<td class="day_value">${user.age}</td>
										</tr>
										<tr class="opened_1">
											<td class="day_label">邮箱</td>
											<td class="day_value">${user.email}</td>
										</tr>
										<tr class="opened_1">
											<td class="day_label">性别</td>
											<td class="day_value">${user.sex}</td>
										</tr>
										<tr class="opened_1">
											<td class="day_label">个性签名</td>
											<td class="day_value">${user.content}</td>
										</tr>
									</tbody>
								</table>

							</div>
							<div class="clearfix"></div>
						</div>
						<div class="col_4">
							<div class="bs-example bs-example-tabs" role="tabpanel"
								data-example-id="togglable-tabs">
								<ul id="myTab" class="nav nav-tabs nav-tabs1" role="tablist">
									<li role="presentation" class="active"><a href="#home"
										id="home-tab" role="tab" data-toggle="tab"
										aria-controls="home" aria-expanded="true">资料完善</a></li>
								</ul>
								<div id="myTabContent" class="tab-content">
									<div role="tabpanel" class="tab-pane fade in active" id="home"
										aria-labelledby="home-tab">
										<div class="basic_1">
											<h3>基本信息</h3>
											<div class="col-md-6 basic_1-left">
												<table class="table_working_hours">
													<tbody>

														<tr class="height">
															<td class="height">身高:</td>
															<td class="height"><c:if test="${user.height!=null}">
																	<input type="text" name="height" value="${user.height}"
																		disabled="disabled">
																</c:if> <c:if test="${user.weight==null}">
																	<input type="text" name="height">
																</c:if></td>
														</tr>
														<tr class="opened">
															<td class="day_label">体重 :</td>
															<td><c:if test="${user.weight!=null}">
																	<input type="text" name="weight" value="${user.weight}"
																		disabled="disabled">
																</c:if> <c:if test="${user.weight==null}">
																	<input type="text" name="weight">
																</c:if></td>
														</tr>
														<tr class="opened">
															<td class="day_label">血型 :</td>
															<td class="day_value"><c:if
																	test="${user.bloodtype!=null}">
																	<input type="text" name="bloodtype"
																		value="${user.bloodtype}" disabled="disabled">
																</c:if> <c:if test="${user.bloodtype==null}">
																	<select name="bloodtype">
																		<option value="A型">A型</option>
																		<option value="B型">B型</option>
																		<option value="O型">O型</option>
																		<option value="AB型">AB型</option>
																	</select>
																</c:if></td>
														</tr>
														<tr class="opened">
															<td class="day_label">星座 :</td>
															<td class="day_value"><c:if
																	test="${user.star!=null}">
																	<input type="text" name="star" value="${user.star}"
																		disabled="disabled">
																</c:if> <c:if test="${user.star==null}">
																	<select name="star">
																		<option value="射手座">射手座</option>
																		<option value="狮子座">狮子座</option>
																		<option value="狮子座">狮子座</option>
																		<option value="天蝎座">天蝎座</option>
																	</select>
																</c:if></td>
														</tr>

													</tbody>
												</table>
											</div>
											<div class="col-md-6 basic_1-left">
												<table class="table_working_hours">
													<tbody>
														<tr class="opened">
															<td class="day_label">婚姻状态 :</td>
															<td class="day_value"><c:if
																	test="${user.marriage!=null}">
																	<input type="text" name="marriage"
																		value="${user.marriage}" disabled="disabled">
																</c:if> <c:if test="${user.marriage==null}">
																	<select name="marriage">
																		<option value="单身">单身</option>
																		<option value="已婚">已婚</option>
																		<option value="恋爱中">恋爱</option>
																		<option value="很复杂">复杂</option>
																	</select>
																</c:if></td>
														</tr>
														<tr class="opened">
															<td class="day_label">位置:</td>
															<td class="day_value"><c:if
																	test="${user.position!=null}">
																	<input type="text" name="position"
																		value="${user.position}" disabled="disabled">
																</c:if> <c:if test="${user.position==null}">
																	<select name="position">
																		<option value="湖南省">湖南省</option>
																		<option value="湖北省">湖北省</option>
																	</select>
																</c:if></td>
														</tr>
														<tr class="closed">
															<td class="day_label">学历 :</td>
															<td class="day_value closed"><c:if
																	test="${user.education!=null}">
																	<input type="text" name="education"
																		value="${user.education}" disabled="disabled">
																</c:if> <c:if test="${user.education==null}">
																	<select name="education">
																		<option value="小学">小学</option>
																		<option value="初中">初中</option>
																		<option value="高中">高中</option>
																		<option value="大学">大学</option>
																		<option value="研究生">研究生</option>
																		<option value="博士">博士</option>
																	</select>
																</c:if></td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="basic_1">
											<h3>兴趣爱好</h3>
											<div class="col-md-6 basic_1-left">
												<table class="table_working_hours">
													<tbody>
														<tr class="opened">
															<td class="day_label">爱好:</td>
															<td class="day_value"><c:if
																	test="${user.hobby!=null}">
																	<input type="text" name="hobby" value="${user.hobby}"
																		disabled="disabled">
																</c:if> <c:if test="${user.hobby==null}">
																	<select name="hobby">
																		<option value="运动与冒险">运动与冒险</option>
																		<option value="电影与娱乐">电影与娱乐</option>
																		<option value="艺术与科学">艺术与科学</option>
																		<option value="技术与知识">技术与知识</option>
																		<option value="时尚与潮流">时尚与潮流</option>
																	</select>
																</c:if></td>
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
											<div class="clearfix"></div>
										</div>
										<div class="basic_1 basic_2">
											<h3>教育背景</h3>
											<div class="basic_1-left">
												<table class="table_working_hours">
													<tbody>
														<tr class="opened">
															<td class="day_label">毕业院校 :</td>
															<td><c:if test="${user.school!=null}">
																	<input type="text" name="school" value="${user.school}"
																		disabled="disabled">
																</c:if> <c:if test="${user.school==null}">
																	<input type="text" name="school">
																</c:if></td>
														</tr>
														<tr class="opened">
															<td class="day_label">所学专业 :</td>
															<td><c:if test="${user.major!=null}">
																	<input type="text" name="major" value="${user.major}"
																		disabled="disabled">
																</c:if> <c:if test="${user.major==null}">
																	<input type="text" name="major">
																</c:if></td>
														</tr>

														<tr class="opened">
															<td class="day_label">年收入 :</td>
															<td><c:if test="${user.income!=null}">
																	<input type="text" name=income value="${user.income}"
																		disabled="disabled">
																</c:if> <c:if test="${user.income==null}">
																	<input type="text" name="income">
																</c:if></td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
									<div role="tabpanel" class="tab-pane fade" id="profile"
										aria-labelledby="profile-tab">
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
									<div role="tabpanel" class="tab-pane fade" id="profile1"
										aria-labelledby="profile-tab1">
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
							<div style="text-align: center">
								<input type="submit" value="确定"
									class="hvr-shutter-out-horizontal" />
							</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div class="clearfix"></div>


	<%@ include file="footer.jsp"%>
	<!-- 调整图片大小 -->
	<script defer src="js/jquery.flexslider.js"></script>
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
	<script>
		$(window).load(function() {
			$('.flexslider').flexslider({
				animation : "slide",
				controlNav : "thumbnails"
			});
		});
	</script>  
</body>
</html>
