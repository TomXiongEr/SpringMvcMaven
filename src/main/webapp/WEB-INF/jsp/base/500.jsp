<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>500 Error</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="500异常处理页">
	
	<!-- css文件 -->
	<link href="./style/blog/css/bootstrap.min.css" rel="stylesheet">
    <link href="./style/blog/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="./style/blog/css/animate.css" rel="stylesheet">
    <link href="./style/blog/css/style.css" rel="stylesheet">
  </head>
  
  <body class="gray-bg">
    <div class="middle-box text-center animated fadeInDown">
        <h1>500</h1>
        <h3 class="font-bold">Internal Server Error</h3>
        <div class="error-desc">
            The server encountered something unexpected that didn't allow it to complete the request. We apologize.<br/>
            You can go back to main page: <br/><a href="index.html" class="btn btn-primary m-t">Dashboard</a>
        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="./style/blog/js/jquery-2.1.1.js"></script>
    <script src="./style/blog/js/bootstrap.min.js"></script>
</body>
</html>
