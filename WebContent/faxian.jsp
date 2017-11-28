<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>sss</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/faxian.css">
    <link rel="stylesheet" href="css/2.0/music-last.css" />
    <style>
    	.odd{
    		background: #fff38f;
    	}
    	.even{
    		background: #ffffee;
    	}
    </style>
</head>
<body>
	
	<%@ include file="header.jsp"%>
		
		<div class="music-second">
			<ul class="music-second-dao">
				<li><a href="#">推荐</a></li>
				<li><a href="#">排行榜</a></li>
				<li><a href="#">歌单</a></li>
				<li><a href="#">主播电台</a></li>
				<li><a href="#">歌手</a></li>
				<li><a href="#">新碟上架</a></li>
			</ul>
		</div>
		
		<!--手风琴轮播-->
    <div class="bg"></div>
    <div class="r-box">
        <div class="r-img"></div>
        <div class="r-img"></div>
        <div class="r-img"></div>
        <div class="r-img"></div>
        <div class="r-img"></div>
    </div>
</body>
<table>
	<thead class="table-log">
		<tr><th>歌曲名</th><th>作者</th><th>时长</th><th>专辑</th></tr>
	</thead>
	<tbody class="table-nei">
		<tr><td>玛丽</td><td>赵雷</td><td></td><td>无法长大</td></tr>
		<tr><td>成都</td><td>赵雷</td><td></td><td>成都</td></tr>
		<tr><td>理想</td><td>赵雷</td><td></td><td>吉姆餐厅</td></tr>
		<tr><td>淘汰</td><td>陈奕迅</td><td></td><td>算了吧</td></tr>
		<tr><td>不要说话</td><td>陈奕迅</td><td></td><td>不想放手</td></tr>
		<tr><td>稳稳的幸福</td><td>陈奕迅</td><td></td><td>稳稳地幸福</td></tr>
		<tr><td>暧昧</td><td>薛之谦</td><td></td><td>暧昧</td></tr>
		<tr><td>刚刚好</td><td>薛之谦</td><td></td><td>初学者</td></tr>
		<tr><td>丑八怪</td><td>薛之谦</td><td></td><td>意外</td></tr>
		<tr><td>动物世界</td><td>薛之谦</td><td></td><td>动物世界</td></tr>
	</tbody>
</table>

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

<script>
	$(function(){
	$(".table-nei>tr:odd").addClass("odd");
	$(".table-nei>tr:even").addClass("even");
})

</script>
<script src="js/faxian.js"></script>

</html>
