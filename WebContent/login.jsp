<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title></title>
		<link rel="stylesheet" href="css/mui.css" />
	</head>
	<body>
		<header class="mui-bar mui-bar-nav">
			<h1 class="mui-title">登录</h1>
		</header>
		
		<div class="mui-content">
		 <form class="mui-input-group">
		 	<div class="mui-input-row">
		 		<label for="">手机号</label>
		 		<input type="text" name="userPhone" id="userPhone"  placeholder="请输入您的手机号"/>
		 	</div>
		 	
		 	<div class="mui-input-row">
		 		<label for="" >验证码</label>
		 		<input type="text" id="codeInput"  placeholder="请输入验证码" />
		 	</div>
		 	
		 	<div class="mui-button-row">
		 		<button id="verificationCode" type="button" class="mui-btn mui-btn-primary mui-btn-outlined ">获取验证码</button>
		 	
		 		<button type="button" id="loginBtn" class="mui-btn mui-btn-block mui-btn-primary" onclick="">确认</button>
		 	</div>
		 </form>
		</div>
		<script type="text/javascript" src="js/mui.js">	</script>
	
		<script type="text/javascript" src="js/login.js"></script>
	</body>
</html>
