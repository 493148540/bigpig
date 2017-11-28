<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		
          
    <title>听听网页音乐播发器</title>
	
	<script type='text/javascript' src='jquery/jquery-3.2.1.min.js' charset='utf-8'></script>
	<link rel="stylesheet" href="bootstrap/bootstrap.min.css"/>
	<script src="bootstrap/bootstrap.min.js"></script>
	
    <style>
    * {
    /* -webkit-box-sizing: border-box; */
   box-sizing: unset;
   
}		
		.music-first-logo {
		    float: left;
		    width: auto;
		
		    padding-right: 20px;
		    text-align: center;
		    padding-top: 20px;
		    padding-left: 120px;
		}
		.music-first .music-first-dao ul  {
			text-align:center;
			width:auto;
		}
		.music-first .music-first-dao  li{
			display: inline-block;
		    height: 50px;
		    padding-top: 20px;
		    line-height: 40px;
		    margin-left: 1%;
		    margin-right: 1%;
		    
		}
		.music-first-login {
    float: right;
    padding-top: 30px;
    padding-right: 0px;
}
    	.music-first-login{
    		    width: auto;
    	}
    	.music-first-login span{
    		margin:10px;
    		color:white;
    		cursor:pointer
    		
    	}
    	.music-first-login span:hover{ color:red;}
    	.usermanageform input{
    		width:100%;
    		height:25px;
    	}
    	.usermanageform table{
    		margin: auto;
    	}
    	.usermanageform table td{
    		padding: 10px;
    		
    	}
    	    
    </style>
    <script>
   
    var doLogin = function(){
    	var form = document.getElementById('loginform');  
    	var formdata = new FormData(form);  
    	 $.ajax({  
             url: 'opened/login',  
             type: 'POST',  
             data: formdata,  
             dataType: 'JSON',  
             cache: false,  
             processData: false,  
             contentType: false,
             success:function(rsp){
            	 
            	 $('#loginbox').modal('hide');
            	 alert(rsp.message);
            	 if(rsp.state===true)
            		 location.reload();
             }
         })
    	
    }
    
    var doRegist = function(){
    	var form = document.getElementById('registform');  
    	var formdata = new FormData(form);  
    	 $.ajax({  
             url: 'opened/regist',  
             type: 'POST',  
             data: formdata,  
             dataType: 'JSON',  
             cache: false,  
             processData: false,  
             contentType: false,
             success:function(rsp){
            	 $('#registbox').modal('hide');
            	 alert(rsp.message);
            	 if(rsp.state===true)
            		 location.reload();
             }
         })
    	
    }
    var exitLogin = function(){
    	 var mymessage=confirm("确认退出吗?");  
    	    if(mymessage==true)  
    	    {  
    	    	$.post('opened/exitlogin',function(){
    	    		 location.reload();
    	    	})
    	    }  
    	    else if(mymessage==false)  
    	    {  
    	       return;
    	    }  
    	
    }
    
    var changePassword = function(){
    	var form = document.getElementById('changepasswordform');  
    	var formdata = new FormData(form);  
    	 $.ajax({  
             url: 'opened/changepassword',  
             type: 'POST',  
             data: formdata,  
             dataType: 'JSON',  
             cache: false,  
             processData: false,  
             contentType: false,
             success:function(rsp){
            	 $('#changepasswordbox').modal('hide');
            	 alert(rsp.message);
            	 if(rsp.state===true)
            		 location.reload();
             }
         })
   	
   }
    $(function(){
    	$('[data-target]').unbind('click').click(function(){
    	
    		var modalid = $(this).attr('data-target');
    		$(modalid+" form")[0].reset();
    		$(modalid).modal('show');
    	})
        
    	
    })
    </script>
	</head>
	<body>
	
		<div class="music-first">
			<div class="music-first-logo">
				<p><a href="#">听听音乐</a></p>
			</div>
			<div class="music-first-login"><p>
			<%if(session.getAttribute("user")==null){%>
			
				<span   data-target="#loginbox">登录</span><span data-target="#registbox" >注册</span>
				<%} else{%>
				<span  >欢迎,</span><span data-target="#changepasswordbox">${sessionScope.user.user_name}</span><span onclick="exitLogin()">注销</span>
				<% }%>
				</p>
			</div>
			<ul  class="music-first-dao">
				<li><a href="index.jsp">首页</a></li>
				<li><a href="faxian.jsp">发现音乐</a></li>
				<li><a href="wode.jsp">我的音乐</a></li>
				<li><a href="friend.jsp">朋友</a></li>
				<li><a href="shangcheng.jsp">商城</a></li>
				<li><a href="#">音乐人</a></li>
				<li><a href="xiazai.jsp">下载客户端</a></li>
				<div style="clear:both"></div>
			</ul>
			<div style="clear:both"></div>
		</div>
		<div style="clear:both"></div>
		<!-- 模态框（Modal） -->
<div class="modal fade" id="loginbox" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">登录</h4>
               
            </div>
            <div class="modal-body">
	            <form  class="usermanageform" role="form" id="loginform">
	          
	            <table>
	            	<tr><td><label for="name">用户名</label></td><td><input type="text" class="form-control" name="username" placeholder="请输入用户名"></td></tr>
	            	<tr><td><label for="password">密&nbsp;&nbsp;&nbsp;&nbsp;码</label></td><td> <input type="text" class="form-control"  autocomplete="off" onfocus="this.type='password'"name="password" placeholder="请输入密码"></td></tr>
	            </table>
				</form>
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="doLogin()">登录</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<div class="modal fade" id="registbox" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">登录</h4>
            </div>
            <div class="modal-body">
	            <form class="usermanageform" role="form" id="registform">
	            
	            <table>
	            	<tr><td><label for="name">用户名</label></td><td><input type="text" class="form-control" name="username" placeholder="请输入用户名"></td></tr>
	            	<tr><td><label for="password">密&nbsp;&nbsp;&nbsp;&nbsp;码</label></td><td> <input type="text" class="form-control" name="password"  autocomplete="off"onfocus="this.type='password'"placeholder="请输入密码"></td></tr>
	            	<tr><td><label for="repassword">确认密码</label></td><td> <input type="text" class="form-control" name="repassword"onfocus="this.type='password'" autocomplete="off" placeholder="请确认密码"></td></tr>
	            </table>
				</form>
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="doRegist()">注册</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<div class="modal fade" id="changepasswordbox" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">登录</h4>
            </div>
            <div class="modal-body">
	            <form class="usermanageform" role="form" id="changepasswordform">
	            
	            <table>
	            	<tr><td><label for="name">用户名</label></td><td><input type="text" class="form-control" name="username" value="${sessionScope.user.user_name}" readonly=true placeholder="请输入用户名"></td></tr>
	            	<tr><td><label for="password">密&nbsp;&nbsp;&nbsp;&nbsp;码</label></td><td> <input type="text" class="form-control" name="password"  autocomplete="off"onfocus="this.type='password'"placeholder="请输入密码"></td></tr>
	            	<tr><td><label for="repassword">确认密码</label></td><td> <input type="text" class="form-control" name="repassword"onfocus="this.type='password'" autocomplete="off" placeholder="请确认密码"></td></tr>
	            </table>
				</form>
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="changePassword()">注册</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
	</body>
	
</html>
