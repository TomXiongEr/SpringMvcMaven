<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %>
<% request.setAttribute("root", request.getContextPath());%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>登陆</title>    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="登陆">
	<meta http-equiv="description" content="登陆界面">
	<!doctype html>
	<script src="${root}/style/js/modernizr.custom.63321.js"></script>
	<script src="${root}/style/js/jquery-1.6.4.min.js"></script>
	<script src="${root}/style/js/layer.js"></script>
	<link rel="stylesheet" type="text/css" href="${root}/style/css/style.css" />
	<link rel="stylesheet" type="text/css" href="${root}/style/css/layer.css" />
  </head>
  <body>
        <div class="container">	
			<!-- Codrops top bar -->
            <div class="codrops-top">
                <a href="http://tympanus.net/Tutorials/RealtimeGeolocationNode/">
                    <strong>&laquo; Previous Demo: </strong>Real-Time Geolocation Service with Node.js
                </a>
                <span class="right">
                	<a href="http://www.flickr.com/photos/12943476@N04/4017721337/in/photostream">Background by Robert Hamilton</a>
                    <a href="http://tympanus.net/codrops/?p=11372">
                        <strong>Back to the Codrops Article</strong>
                    </a>
                </span>
            </div>
			
			<header>
				<!--<h1>Custom <strong>Login Form</strong> Styling</h1>-->
				<h2>Welcome to this blog,and record all of your moments in your life</h2>
				<div class="support-note">
					<span class="note-ie">Sorry, only modern browsers.</span>
				</div>
			</header>
			
			<section class="main">					
				<form id="loginForm" name="loginForm" method="POST" class="form-4" >
				    <h1 align="center">登录</h1>							
				    <p>
				        <label for="login">Username or email</label>
				        <input type="text" name="userName" placeholder="请输入用户名"   required>
				    </p>
				    <p>
				        <label for="password">Password</label>
				        <input type="password" name='password' placeholder="请输入密码"   required> 
				    </p>
				    <p>
				      <div style="text-align: left; margin-left: 10px;" id="vcode" >
	                     <input type="text" name="verifyCode" id="verifyCode"  placeholder="验证码" style="width: 110px; margin-left: -8px; margin-right: 8px;">
                	     <img src="#" id="vcodeImg" alt="验证码" title="点击更换"  />
                      </div>                      
                    </p>
				    <p>	   				        
				        <label for="rememberMe">RememberMe</label>
				        <input type="checkbox" checked="checked" id="rememberMe" style="width: 10px; height: 10px;">记住我
				    </p>
			        <div style="margin-top:20px;">
			          <div style="float:left;width:45%;"><input type="button" name="login"  id="login" value="登陆" ></div>
			          <div style="float:right;width:45%;"><input type="button" name="register" id="register" value="注册"></div>
			        </div>				           
				</form>
				<!-- <form action="/login2.do" method="post">
				<div style="margin-bottom: 20px">
					<div>用户名：</div>
					<input class="easyui-textbox" name="username" data-options="required:true,iconCls:'icon-man'" style="width: 100%; height: 32px">
				</div>
				<div style="margin-bottom: 20px">
					<div>密码:</div>
					<input class="easyui-textbox" type="password" name="password" data-options="required:true,iconCls:'icon-lock'" style="width: 100%; height: 32px">
				</div>
				<div style="margin-bottom: 20px">
					<div>是否记住我:<input type="checkbox" name="rememberMe"></div>
				</div>
				<div style="margin-bottom: 20px">
					<a href="#" id="btn-login" class="easyui-linkbutton c8" iconCls="icon-ok" style="width: 100%; height: 32px">Login</a>
				</div>
			</form> -->​
			</section>
        </div>
  </body>
</html>
<script>

$(document).ready(function(){
//回车事件绑定
document.onkeydown=function(event){
	var e = event || window.event || arguments.callee.caller.arguments[0];
	if(e && e.keyCode==13){ 
		$('#login').click();
	}
}; 
//键盘绑定事件;
$('#userName,#password,#verifyCode').bind('keydown',function(event){
	if(event.keyCode == 13){
		if(flag){
			$("#login").click();
		}
	}
});

//验证码
 $("#vcodeImg").click(function(){  
	/* 动态验证码，改变地址，多次在火狐浏览器下，不会变化的BUG，故这样解决 */
	var img=document.getElementById("vcodeImg");
	img.src ="<c:url value='/open/getGifCode'/>?time"  +new Date();
	//$(i).replaceAll(this);
}); 

$("#login").bind ("click",function(){
	if(!volidate()){
		return;
	}
	var params=$("#loginForm").serialize();
	$.ajax({
		type:"post",
		data:params,
		dataType:"json",
		url:"<c:url value='/user/loginCheck'/>",
		success:function(data){
			if(data.checkCode=="10"){
				layer.msg("该用户不存在!");
				$("input[name='userName']")[0].focus();
			}else if(data.checkCode=="11"){
			    alert("验证码输入错误!");	
			    $("input[name='verifyCode']").val("");
			}else if(data.checkCode=="12"){
			    alert("用户名或密码错误!");	
			    $("input[name='userName']")[0].focus();
			}else{
				window.location.href="<c:url value='/user/userLogin'/>";
			}		
		},
		error:function(){
			alert("服务器内部异常!");
		}
	});
});

function volidate(){
	if($("input[name='userName']").val()==""){
		layer.msg("用户名不能为空!");
		return false;
	}
	if($("input[name='password']").val()==""){
		layer.msg("密码不能为空!");
		return false;
	}
	return true;
}

$("#register").click(function(){
	window.location.href="<c:url value='/registerView'/>"
});

//初始化验证码;
$("#vcodeImg").click();

});
</script>
