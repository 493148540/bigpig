//封装函数
function getId(id){
    return document.getElementById(id);
    
}
var add = getId('add');
var dropDown = getId('drop-down');
 var msgBtn=getId('msg-btn');
 var model=getId('model');
 var bg=getId('bg');
 var close=getId('close');
 var message=getId('message');
 var btn=getId('btn');
 var show=getId('show');
 
 var arr =[];//收集所有发布的说说，初始值为空。

var isView=false;//决定是否显示下拉框
 add.addEventListener('click',function(){
 	
 	dropDown.style.display='block';
 	isView=!isView;
 	if(isView){
 		dropDown.style.display='block';
 	}else{
 		dropDown.style.display='none';
 	}
 },false)
 
msgBtn.addEventListener('click',function(){
	model.style.display='block';
	bg.style.display='block';
	
},false)

//任何事件的发生的时候都会产生一个事件对象
close.addEventListener('click',function(e){
	var e=e||window.event;//e代表事件对象，这是兼容浏览器的写法
	e.preventDefault();//阻止默认事件的发生
	model.style.display='none';
	bg.style.display='none';
	
},false)

//发布说说
btn.addEventListener('click',function(){
	if(message.value==''){
	    return;
	};
	var msgValue=message.value;
	getMsg(msgValue);
	model.style.display='none';
	bg.style.display='none';
	dropDown.style.display='none';
	isView=false;
	
	message.value='';
},false);

//展示发布的说说
function getMsg(data){
	var msgs='';
	arr.push({
		msg:data,
		time:Date.now()
	});
	var nowTime=Date.now();
	
	for(var i=0;i<arr.length;i++){
		var chTime=(nowTime-arr[i].time)/1000;
		console.log(typeof chTime);
		
		msgs+=`
		  <div class="msg-item">
		  <p>${arr[i].msg}</p>
		  <span>${setTime(chTime)}</span>
		  <span>赞</span>
		  <span>评论</span>
		  
		  </div>
		`;//``表示模版字符串
	}
	show.innerHTML=msgs;

}

//时间戳的格式化
function setTime(t){
	if(t<1){
	return '刚刚';
	}else if(t>=1&&t<5){
		return '1s前';
	}
	else if(t>=5&&t<60){
		return '5s前';
	}else if(t>=60){
		return '1分钟前';
	}
	
}


