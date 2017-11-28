//验证码节点
var verificationCodeId = document.getElementById("verificationCode");
//用户输入手机号
var userPhone = document.getElementById("userPhone");
//确认按钮节点
var loginBtnId = document.getElementById("loginBtn");
//用户输入的验证码
var codeInputId = document.getElementById("codeInput");

var codeSession;
//验证码倒计时
var count = 60;
var codeBtnState = false;
//获取验证码的点击事件
verificationCodeId.onclick = function(){
	judgePhone();
	if(codeBtnState){
		count = 60
		getCode();//防止用户多次点击
		sendMessage();
	}
	else if(userPhone.value==""){
		alert("请输入手机号");
		return false;
	}else{
		alert("请输入正确的手机号");
		return false;
	}
}

//确认登登录事件
loginBtnId.onclick = function(){
    senCode();
}
//用户手机号验证
function judgePhone(){
	var userphone_num = userPhone.value;
	//alert(userphone_num);
	var reg =/^1[35478]\d{9}$/;
	if( !reg.test(userphone_num)){
		codeBtnState = false;
	}
	else{
		codeBtnState = true;
	}
}
//获取验证码
function getCode(){
	verificationCodeId.disabled="disabled";
	verificationCodeId.innerText=count+"重新获取";
	count--;
	if(count>-1){
		setTimeout(getCode,1000);
	}
	else{
	verificationCodeId.innerText="获取验证码";
	verificationCodeId.removeAttribute("disabled");
	}
}

//发送短息请求
function sendMessage(){
		mui.ajax("http://www.bunfly.com/Bicycle/sms.php",{
		data:{
		userPhone:userPhone.value
	},
	dataType:'json',//服务器返回json格式数据
	type:'post',//HTTP请求类型
	timeout:10000,//超时时间设置为10秒；
	headers:{'Content-Type':'application/x-www-form-urlencoded'},	              
	success:function(res){
		//服务器返回响应，根据响应结果，分析是否登录成功；
		console.log(res);
		codeSession = res.codeSession;
	},
	error:function(err){
		//异常处理；
		alert("错误")
	}
})
}

//输入验证码是否正确
function senCode(){
	mui.ajax('http://www.bunfly.com/Bicycle/code.php',{
		data:{
		"userCode":codeInputId.value,//用户输入的验证码
		"codeSession":codeSession,
	},
	dataType:'json',//服务器返回json格式数据
	type:'post',//HTTP请求类型
	timeout:10000,//超时时间设置为10秒；
	headers:{'Content-Type':'application/x-www-form-urlencoded'},	              
	success:function(res){
		//
		if(res.loginState == 1){
			mui.openWindow({
				url:"index.html"
			})	
		}
		else{
				mui.alert("验证码错误,请重新输入");
			}
	},
	error:function(err){
		//异常处理；
		alert("网络中断");
	}
  })
	}

