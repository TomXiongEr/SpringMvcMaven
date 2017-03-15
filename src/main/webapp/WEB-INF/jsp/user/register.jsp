<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %>
<% request.setAttribute("root", request.getContextPath());%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>注册</title>    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="注册">
	<meta http-equiv="description" content="注册界面">
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
				<!-- <h1>Custom <strong>Login Form</strong> Styling</h1>-->
                <h2>Welcome to this blog,and record all of your moments in your life</h2>
				<div class="support-note">
					<span class="note-ie">Sorry, only modern browsers.</span>
				</div>
			</header>
			<section class="main">				
				<form id="registerForm" name="registerForm" method="POST" class="form-4" >
				
				    <h1 align="center">注册</h1>
				    <p>
				        <label for="nickName">NickName</label>
				        <input type="text" name="nickName" id="nickName" placeholder="请输入昵称"   required>
				    </p>
				    <p>
				        <label for="userName">Username</label>
				        <input type="text" name="userName" id="userName" placeholder="请输入用户名"   required>
				    </p>
				    <p>
				        <label for="email">Email</label>
				        <input type="text" name="email" id="email" placeholder="请输入邮箱"   required>
				    </p>
				    <p>
				        <label for="password">Password</label>
				        <input type="password" name='password' id='password' placeholder="请输入密码"   required> 
				    </p>
				    <p>
				        <label for="rePassword">RePassword</label>
				        <input type="password" name='rePassword' id='rePassword' placeholder="请重新密码"   required> 
				    </p>
			        <div style="margin-top:20px;">
			          <div style="float:left;width:45%;"><input type="button" name="register" id="register" value="注册"></div>
			          <div style="float:right;width:45%;"><input type="button" name="login"  id="login" value="登陆" ></div>	          
			        </div>				           
				</form>​
			</section>
        </div>
  </body>
</html>
<script>
$(document).ready(function(){
	
	$("#register").click(function(){
		if(!registVolidate()){
			return;
		}
		$.ajax({
			type:"post",
			data:$("#registerForm").serialize(),
			dataType:"json",
			url:"<c:url value='register'/>",
			success:function(data){
			    alert(data.msg);				
				window.location.reload();
			},
			error:function(){
				alert("服务器内部异常!");
			}
		});
	});
	
	$("#login").click(function(){
		window.location.href="<c:url value='/login'/>";
	});
	
	
	function registVolidate() {
		if ($("#nickName").val() == "") {
			alert("请输入昵称");
			return false;
		}
		if ($("#userName").val() == "") {
			alert("请输入用户名");
			return false;
		}
		if ($("#email").val() == "") {
			alert("请输入邮箱");
			return false;
		}
		if ($("#password").val() == "") {
			alert("请输入密码");
			return false;
		}
		if ($("#rePassword").val() == "") {
			alert("请再次输入密码");
			return false;
		}
		return true;
	   }
	});
</script>
