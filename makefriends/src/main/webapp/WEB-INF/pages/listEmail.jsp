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
<link rel="stylesheet" type="text/css" href="css/iconfont.css" />
<link rel="stylesheet" type="text/css" href="css/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="css/style5.css" />
<title>邮箱记录</title>
</head>
<body>
<div class="page-container">
	<div class="mt-20">
		<table class="table table-border table-bordered table-bg table-hover table-sort table-responsive">
			<thead>
				<tr class="text-c">
					<th width="25"><input type="checkbox" name="" value=""></th>
					<th width="80">email_id</th>
					<th width="80">username</th>
					<th width="80">我的邮箱</th>
					<th width="80">收件人</th>
					<th width="80">内容</th>
					<th width="120">时间</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listEmail}" var="v">
					<tr class="text-c">
						<td><input type="checkbox" value="" name=""></td>
						<td>${v.email_id}</td>
						<td>${v.username}</td>
						<td>${v.iemail}</td>
						<td>${v.uemail}</td>
						<td>${v.content}</td>
						<td>${v.time}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>