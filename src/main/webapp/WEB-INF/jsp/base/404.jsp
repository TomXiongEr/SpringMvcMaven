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
    
    <title>404 Error</title>
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="404异常页">
	
	<!-- css文件 -->
	<link href="./style/blog/css/bootstrap.min.css" rel="stylesheet">
    <link href="./style/blog/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="./style/blog/css/animate.css" rel="stylesheet">
    <link href="./style/blog/css/style.css" rel="stylesheet">
  </head>
  
    <body class="gray-bg">
    <div class="middle-box text-center animated fadeInDown">
        <h1>404</h1>
        <h3 class="font-bold">Page Not Found</h3>
        <div class="error-desc">
            Sorry, but the page you are looking for has note been found. Try checking the URL for error, then hit the refresh button on your browser or try found something else in our app.
            <form class="form-inline m-t" role="form">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search for page">
                </div>
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="./style/blog/js/jquery-2.1.1.js"></script>
    <script src="./style/blog/js/bootstrap.min.js"></script>
  </body>
</html>
