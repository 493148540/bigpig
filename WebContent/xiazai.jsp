<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>听听音乐</title>
		<link href="css/xiazai.css" rel="stylesheet" />
	</head>
	<body>
			<%@ include file="header.jsp"%>
		
		<div class="music-faxian-lan"></div>
		
		<!--下载页面的轮播图-->
		<div class="music-xiazai-background">
			<div id="wrap">
				<div class="xiazai-tu" id="tu">
					<img src="img/xiazai/20.png" alt="" />
					<img src="img/xiazai/21.png" alt="" />
					<img src="img/xiazai/22.png" alt="" />
				</div>
				<div class="music-number" id="music-number">
					<span class="selected">1</span>
					<span>2</span>
					<span>3</span>
					
				</div>
			</div>
			<div class="music-banben-one">
				<div class="music-xiazai">
					<span>下载</span>
				</div>
				<a href="http://music.163.com/api/android/download/latest2">
				<input type="button" value="安卓版"  onclick="window.location.href('http://music.163.com/api/android/download/latest2')" style="width: 120px;height: 30px;" />
				</a>
				<a  href="https://itunes.apple.com/app/id590338362">
				<input type="button" value="iphone版" onclick="window.location.href('https://itunes.apple.com/app/id590338362')"  style="width: 120px;height: 30px;"/>
				</a>
				<a  href="https://itunes.apple.com/cn/app/wang-yi-yun-yin-lehd/id871041757?l=ch">
				<input type="button" value="安卓版"  onclick="window.location.href('https://itunes.apple.com/cn/app/wang-yi-yun-yin-lehd/id871041757?l=ch')" style="width: 120px;height: 30px;"/>
				</a>
				<a href="http://music.163.com/api/osx/download/latest">
				<input type="button" value="iphone版"  onclick="window.location.href('http://music.163.com/api/osx/download/latest')" style="width: 120px;height: 30px;"/>
				</a>
			</div>
		</div>
		<div class="music-img-one">
			<span>千万曲库，首首CD音质</span>
			<img src="img/xiazai/b1.jpg"  alt="" />
		</div>
		<div class="music-img-two">
			<span>千位明星，亲自推荐音乐</span>
			<img src="img/xiazai/b2.jpg"  alt="" />
		</div>
		<div class="music-img-three">
			<span>社交音乐，发现全新音乐</span>
			<img src="img/xiazai/b3.jpg"  alt="" />
		</div>
		<div class="music-img-fore">
			<span>听歌识曲，祝你疯狂猜歌</span>
			<img src="img/xiazai/b5.jpg"  alt="" />
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
		<script src="js/xiazai.js" type="text/javascript"></script>
	</body>
</html>
