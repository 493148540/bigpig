<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>听听音乐</title>
		<link href="css/shangcheng.css" rel="stylesheet" />
		<link href="css/2.0/music-last.css" rel="stylesheet" />
	</head>
	
	<body>
		
			<%@ include file="header.jsp"%>
		
		<div class="music-faxian-lan"></div>
		
		<!--模拟购物车-->
		<div class="music-shangcheng-back">
		<div id="middle">
			<div id="bianji">
				<span>编辑</span>
			</div> 
			<div id="middle2"> 
				
			<!--这是商品--> 
			</div>
			<div class="result"> 
				<div class="allText">全选:</div> 
				<div class="all"></div> 
				<div class="money"> 
					<div class="rmb">
						¥:<span class="price">0</span>
						
					</div> 
					<div class="btn">结算</div> 
				</div> 
			</div> 
		</div> 
		
		<div class="music-shangcheng-name">
			<div class="music-shop-one">
				<img src="img/shangcheng/40.jpg" alt="" />
				<p><span>无线耳机</span></p>
				<p style="color: red;"><span>$</span><em>69</em></p>
			</div>
		
		
		
			<div class="music-shop-one">
				<img src="img/shangcheng/41.jpg" alt="" />
				<p><span>头戴耳机</span></p>
				<p style="color: red;"><span>$</span><em>99</em></p>
			</div>
		
		
		
			<div class="music-shop-one">
				<img src="img/shangcheng/42.jpg" alt="" />
				<p><span>通话耳机</span></p>
				<p style="color: red;"><span>$</span><em>199</em></p>
			</div>
		
		
		
			<div class="music-shop-one">
				<img src="img/shangcheng/43.jpg" alt="" />
				<p><span>AKG耳机</span></p>
				<p style="color: red;"><span>$</span><em>299</em></p>
			</div>
			
			<div class="music-shop-one">
				<img src="img/shangcheng/44.jpg" alt="" />
				<p><span>蓝牙音箱</span></p>
				<p style="color: red;"><span>$</span><em>399</em></p>
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
	
		<script src="js/shangcheng.js"></script>
	</body>
</html>
