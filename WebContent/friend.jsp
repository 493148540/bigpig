<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>评论</title>
		<link rel="stylesheet"  href="css/commit.css"/>
		<link rel="stylesheet"  href="css/friend.css"/>
		<link rel="stylesheet"  href="css/2.0/music-last.css"/>
		<style>
			.star-one .btn{
	 width: 80%; 
	 height: 30px; 
	 border: none; 
	 outline: none; 
	 background-color: lightgreen; 
	 color: #fff; 
	 display: block; 
	 margin: 10px auto; 
}
		</style>
	</head>
	<body>
		
				<%@ include file="header.jsp"%>
		
		<div class="music-faxian-lan"></div>
		
		<div class="dongtai">
			<p><span>动态</span></p>
		</div>
		
		<!--模拟朋友圈发送动态功能-->
		 <div class="wrap">
		 	<div class="add" id="add">
		 		+
		 	</div>
		 	<div class="drop-down" id="drop-down">
		 		<span id="msg-btn">说说</span>
		 		<span>相册</span>
		 		<span>拍摄</span>
		 		<span>签到</span>
		 	</div>
		 	
		 </div>
		 <div class="model" id="model">
		 	<div >
		 		<textarea name="" id="message" class="message"></textarea>
		 		
		 	</div>
		 	<div >
		 		<button type="button" id="btn" class="btn">发表</button>
		 	</div>
		 	<div>
		 		<a href="" class="close" id="close">关闭</a>
		 	</div>
		 </div>
		 <div class="bg" id="bg">
		 	
		 </div>
		 <div class="show" id="show">
		 	
		 </div>
		 
		 <div class="friend-ziji">
		 	<div class="friend-img">
		 		<img src="img/wode/50.jpg"  alt=""/>
		 		<p><span>第四小组官方账号</span></p>
		 	</div>
		 	<div class="star">
		 		<div class="star-one">
		 			<p><span>明星账号</span></p>
		 			<img src="img/friend/60.jpg" alt="" />
		 			<span>左叔</span>
		 			<input value="+关注" type="button" style="width: 50px;height: 30px;" />
		 		</div>
		 		<div class="star-one">
		 			<img src="img/friend/71.jpg" alt="" />
		 			<span>孙楠</span>
		 			<input value="+关注" type="button" style="width: 50px;height: 30px;" />
		 			<div class="star-one">
		 			<img src="img/friend/72.jpg" alt="" />
		 			<span>羽泉</span>
		 			<input value="+关注" type="button" style="width: 50px;height: 30px;" />
		 		</div>
		 		<div class="star-one">
		 			<img src="img/friend/73.jpg" alt="" />
		 			<span>李志</span>
		 			<input value="+关注" type="button" style="width: 50px;height: 30px;" />
		 		</div>
		 		</div>
		 	</div>
		 </div>
		 
		 		<!--页面的页脚-->

<div class="music-last">
	<div class="music-last-dao">
		<p>
			<a href="#">关于听听</a>
			<span>|</span>
			<a href="#">客户服务</a>
			<span>|</span>
			<a href="#">服务条款</a>
			<span>|</span>
			<a href="#">网页导航</a>
			<span>|</span>
			<a href="#">意见反馈</a>
		</p>
		<p class="music-last-dao-span">
			<span>听听音乐有限公司</span>
		<span>电子科技大学成都学院第四毕设小组版权所有</span>
		</p>
	</div>
</div>
	
		<script  src="js/commit.js">
//			 var arr= [1,1.2,true];//一个集合，集合中的每个成员都通过逗号分隔。成员是其他任何字符类型。
//			 alert(alert(0));//[0]代表数组中的第一位。
		</script>
	</body>
</html>
