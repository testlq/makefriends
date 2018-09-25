<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Letter - Simple Sign Up Form</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">  <!-- Google web font "Open Sans" -->
  <link rel="stylesheet" href="css/font-awesome.min.css">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  
  <link rel="stylesheet" href="css/demo.css" />
  <link rel="stylesheet" href="css/templatemo-style.css">
  
  <script type="text/javascript" src="js/particles.js"></script>
  <script type="text/javascript" src="js/app.js"></script>
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/modernizr.custom.86080.js"></script>
	<script  type="text/javascript">
			
	
		function sendEmail(){
			var Iemail=$('#Iemail').val();
			var Uemail=$('#Uemail').val();
			var msg=$('#msg').val();
			//$.post
			$.post('toemail.action',{Iemail:Iemail,Uemail:Uemail,msg:msg},function(data){
					alert("=======");
					if(data.code==1){
						alert("发送成功!!!");
					}else{
						alert("发送失败!!!");
					}
			}); 
		 } 
		
		/* function sendEmail(){
			var Iemail=$('#Iemail').val();
			var Uemail=$('#Uemail').val();
			var msg=$('#msg').val();
			$.ajax({
				type:'post',
				url:'toemail.action',
				data:{'Iemail':Iemail,'Uemail':Uemail,'msg':msg},
				dataType:'json',
				success:function(data){
					if(data.code==1){
						alert("发送成功!!!");
					}else{
						alert("发送失败!!!");
					}
				} 
			});
		} */
	
		
		
	 
	
	</script>	
	</head>
	<body>
			<div id="particles-js"></div>
		
			<ul class="cb-slideshow">
	            <li></li>
	            <li></li>
	            <li></li>
	            <li></li>
	            <li></li>
	            <li></li>
	        </ul>

			<div class="container-fluid">
				<div class="row cb-slideshow-text-container ">
					<div class= "tm-content col-xl-6 col-sm-8 col-xs-8 ml-auto section">
					
					<form method="post" class="subscribe-form">
						<div class="text" style="overflow:scroll;"><textarea id="msg" name="msg" rows="19" cols="37"></textarea></div>
						<header class="mb-5"><h1>邮件</h1></header>
						<P class="mb-5">数人世相逢，百年欢笑，能得几回又。</P>
               	    	<div class="row form-section">
							<div class="col-md-7 col-sm-7 col-xs-7">
			                      <input id="Iemail" name="Iemail" type="text" value="${Iemail}" class="form-control" id="contact_email" placeholder="我的邮箱" required/>
				  			</div>
							<div class="col-md-7 col-sm-7 col-xs-7">
			                      <input id="Uemail" name="Uemail" type="text" value="${Uemail}" class="form-control" id="contact_email" placeholder="朋友邮箱" required/>
				  			</div>
							<div class="col-md-5 col-sm-5 col-xs-5">
								<button id="toEmail" onClick="sendEmail()" class="tm-btn-subscribe">发送</button>
							</div>
						
						</div>
                    </form>
                    
					<div class="tm-social-icons-container text-xs-center">
	                    <a href="#" class="tm-social-link"><i class="fa fa-facebook"></i></a>
	                    <a href="#" class="tm-social-link"><i class="fa fa-google-plus"></i></a>
	                    <a href="#" class="tm-social-link"><i class="fa fa-twitter"></i></a>
	                    <a href="#" class="tm-social-link"><i class="fa fa-linkedin"></i></a>
	                </div>

					</div>
				</div>	
				<div class="footer-link">
					<p>版权所有 © 2018 项目名称
                    
                    - 设计: <a rel="nofollow" href="#" target="_parent">Templatemo</a></p>
				</div>
			</div>	
	</body>

	
</html>