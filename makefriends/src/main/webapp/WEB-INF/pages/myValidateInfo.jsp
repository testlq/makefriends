<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="stylesheet" type="text/css" href="css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="css/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="css/style5.css" />
<title>好友验证</title>
	<script src="js/jquery.min.js"></script>
	<script>
		function agree(id){
			$.post("agree.action?user_id="+id,function(data){
					alert(data);
			});
		}
		
		function disagree(id){
			$.post("disagree.action?user_id="+id,function(data){
					alert(data.errmsg);
			});
		}
	</script>
</head>
<body>
<%-- <%@ include file="header.jsp" %> --%>
<div class="page-container">
	<div class="text-c">
		<button onclick="removeIframe()" class="btn btn-primary radius">关闭选项卡</button>
		日期范围：
		<input type="text" onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'logmax\')||\'%y-%M-%d\'}' })" id="logmin" class="input-text Wdate" style="width:120px;">
		-
		<input type="text" onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'logmin\')}',maxDate:'%y-%M-%d' })" id="logmax" class="input-text Wdate" style="width:120px;">
		<input type="text" name="" id="" placeholder="好友验证id" style="width:250px" class="input-text">
		<button name="" id="" class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜信息</button>
	</div>
	<div class="cl pd-5 bg-1 bk-gray mt-20">
	 	 <span class="r">共有数据：<strong>${myValidateInfo.size()}</strong> 条</span> 
	</div>
	<div class="mt-20">
		<table class="table table-border table-bordered table-bg table-hover table-sort table-responsive">
			<thead>
				<tr class="text-c">
					<th width="25"><input type="checkbox" name="" value=""></th>
					<th width="80">ID</th>
					<th width="80">用户名</th>
					<th width="80">个性签名</th>
					<th width="80">性别</th>
					<th width="120">所住地</th>
					<th width="120">操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${myValidateInfo}" var="v">
					<tr class="text-c">
						<td><input type="checkbox" value="" name=""></td>
						<td>${v.user_id}</td>
						<td>${v.username}</td>
						<td>${v.content}</td>
						<td>${v.sex}</td>
						<td>${v.position}</td>
						<td><a href="javascript:agree(${v.user_id})">同意</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:disagree(${v.user_id})">不同意</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>