<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0 user-scalable=no"/>
          <meta name="viewport" content="width=device-width,initial-scale=0.5, minimum-scale=0.5, maximum-scale=0.5, user-scalable=no" />
    <title>听听网页音乐播发器</title>
    <link href="css/music.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/2.0/common.css">
    <link rel="stylesheet" href="css/2.0/music_play.css">
    <link rel="stylesheet" href="css/2.0/music-last.css"/>
 

    <style>
    	.music-first-login{
    		width:100px
    	}
    	.music-first-login a{
    		margin:10px;
    		color:white;
    	}
    	.music-first-login a:hover{ color:red;}
    	
    	
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
		<!--轮播视图-->
		<div class="wrap-background">
		<div id="wrap">
		<div class="clear"  id="inner">
			<img  src="img/1.jpg" alt=""/>
			<img  src="img/2.jpg" alt=""/>
			<img  src="img/3.jpg" alt=""/>
			<img  src="img/4.jpg" alt=""/>
			<img  src="img/5.jpg" alt=""/>
			<img  src="img/6.jpg" alt=""/>
			<img  src="img/7.jpg" alt=""/>
			<img  src="img/1.jpg" alt=""/>
		</div>
		<div class="paganation" id="paganation">
			<span class="selected">1</span>
			<span>2</span>
			<span>3</span>
			<span>4</span>
			<span>5</span>
			<span>6</span>
			<span>7</span>
		</div>
		<div id="left" class="arrow"><</div><!-- 向左切换按钮 --> 
		<div id="right" class="arrow">></div><!-- 向右切换按钮 -->
      </div>
      
      </div>
    <!--播放器视图-->
<div class="content" id="content">
    <div class="play-sikn">
        <audio id="music-play" src="http://ws.stream.qqmusic.qq.com/C100001Qu4I30eVFYb.m4a?fromtag=38">
            您的浏览器不支持 audio 标签。
        </audio>
        <span class="music-name">“ 梦的召唤 晚安曲[宝贝家] No.1 ”</span>

        <div class="play-circle">
            <img src="img/user_avatar_icon.jpg" class="play-head">
        </div>
        <div class="play-but">
            <span class="play-last"></span>
            <span class="play-pause" play="no"></span>
            <span class="play-next"></span>
        </div>
        <p class="music-info"><span id="donorsName">电子科技大学成都学院</span></p>
        <!-- 进度条 -->
        <div class="play-bar">
            <p class="current-time bar-time">00:00</p>
            <div class="play-pro">
                <span id="songProgressBar" class="progress-bar bar"></span>
                <span id="songProgressLoad" class="progress-bar load"></span>
                <span id="songProgressCurrent" class="progress-bar current"></span>
                <span id="songProgressClick" class="progress-bar click-bar"></span>
                <span id="songProgressHideBar" class="progress-bar hide-bar"></span>
            </div>
            <p class="end-time bar-time">00:00</p>
        </div>
        <div class="cd_brush_head">
            <div class="cd_brush">

            </div>
        </div>
    </div>
    <div class="text-title">
        <span class="text-title-name">音乐列表</span>
        <span class="fine-line"></span>
    </div>
    <div class="details-content">
        <ul class="music-list">
        </ul>
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

</body>
<script>
    //播放列表
    var playlist = [
        {
            "songName": "演员-薛之谦",
            "donorsName": "电子科技大学成都学院",
            "mp3": "http://ws.stream.qqmusic.qq.com/C100001Qu4I30eVFYb.m4a?fromtag=38",
            "coverImage": "https://y.gtimg.cn/music/photo_new/T002R150x150M000003y8dsH2wBHlo.jpg?max_age=2592000",
            "sort": 0
        },
        {
            "songName": "丑八怪-薛之谦",
            "donorsName": "电子科技大学成都学院",
            "mp3": "http://ws.stream.qqmusic.qq.com/C100000QwTVo0YHdcP.m4a?fromtag=38",
            "coverImage": "https://y.gtimg.cn/music/photo_new/T002R150x150M000003y8dsH2wBHlo.jpg?max_age=2592000",
            "sort": 1
        },
        {
            "songName": "告白气球-14种语言",
            "donorsName": "电子科技大学成都学院",
            "mp3": "http://ws.stream.qqmusic.qq.com/C10000480VxH1XXPcK.m4a?fromtag=38",
            "coverImage": "",
            "sort": 2
        },{
            "songName": "演员-薛之谦",
            "donorsName": "电子科技大学成都学院",
            "mp3": "http://ws.stream.qqmusic.qq.com/C100001Qu4I30eVFYb.m4a?fromtag=38",
            "coverImage": "https://y.gtimg.cn/music/photo_new/T002R150x150M000003y8dsH2wBHlo.jpg?max_age=2592000",
            "sort": 3
        },
        {
            "songName": "丑八怪-薛之谦",
            "donorsName": "电子科技大学成都学院",
            "mp3": "http://ws.stream.qqmusic.qq.com/C100000QwTVo0YHdcP.m4a?fromtag=38",
            "coverImage": "https://y.gtimg.cn/music/photo_new/T002R150x150M000003y8dsH2wBHlo.jpg?max_age=2592000",
            "sort": 4
        },
        {
            "songName": "告白气球-14种语言",
            "donorsName": "电子科技大学成都学院",
            "mp3": "http://ws.stream.qqmusic.qq.com/C10000480VxH1XXPcK.m4a?fromtag=38",
            "coverImage": "",
            "sort": 5
        },{
            "songName": "演员-薛之谦",
            "donorsName": "电子科技大学成都学院",
            "mp3": "http://ws.stream.qqmusic.qq.com/C100001Qu4I30eVFYb.m4a?fromtag=38",
            "coverImage": "https://y.gtimg.cn/music/photo_new/T002R150x150M000003y8dsH2wBHlo.jpg?max_age=2592000",
            "sort": 6
        },
        {
            "songName": "丑八怪-薛之谦",
            "donorsName": "电子科技大学成都学院",
            "mp3": "http://ws.stream.qqmusic.qq.com/C100000QwTVo0YHdcP.m4a?fromtag=38",
            "coverImage": "https://y.gtimg.cn/music/photo_new/T002R150x150M000003y8dsH2wBHlo.jpg?max_age=2592000",
            "sort": 7
        },
        {
            "songName": "告白气球-14种语言",
            "donorsName": "电子科技大学成都学院",
            "mp3": "http://ws.stream.qqmusic.qq.com/C10000480VxH1XXPcK.m4a?fromtag=38",
            "coverImage": "",
            "sort": 8
        }
    ];
    var mMusicList = '';
    $.each(playlist, function (index, value) {
        mMusicList += '<li><input type="radio" class="radio" name="select-music" value="' +
                index + '" id="check_' + index + '">' +
                '<label for="check_' + index + '"></label>' +
                '<div class="music-item">' +
                '<div class="item-center">' +
                '<div class="music-item-head">' +
                '<img src="'+value.coverImage+'" onerror="this.src=\'img/user_avatar_icon.jpg\'" class="music-head-img">' +
                '</div><p class="music-item-name">' + value.songName + '</p></div></div></li>'
    });
    $('.music-list').html(mMusicList);
</script>
<script src="js/music.js" type="text/javascript"></script><!--轮播特效-->
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
    <script type="text/javascript" src='js/2.0/common.js'></script>
    <script type="text/javascript" src='js/2.0/player.js'></script>
	</body>
</html>
