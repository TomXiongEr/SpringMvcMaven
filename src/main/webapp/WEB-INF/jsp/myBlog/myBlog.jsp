<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>我的博客</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="description" content="博文日志">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="./style/blog/css/bootstrap.min.css" rel="stylesheet">
    <link href="./style/blog/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Toastr style -->
    <link href="./style/blog/css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <link href="./style/blog/css/animate.css" rel="stylesheet">
    <link href="./style/blog/css/style.css" rel="stylesheet">
  </head>
 <body>

    <div id="wrapper">

        <!-- 侧边导航栏 -->
        <jsp:include page="../base/left.jsp" />

        <div id="page-wrapper" class="gray-bg">
        
        <!-- 顶部导航栏 -->
        <jsp:include page="../base/top.jsp" />
         
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Blog</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li>
                            <a>Miscellaneous</a>
                        </li>
                        <li class="active">
                            <strong>Blog</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>

        <!-- 正文内容 -->
        <div class="wrapper wrapper-content  animated fadeInRight blog">
            <div class="row">
                <div class="col-lg-6">              
                   <c:forEach items="${blogList}" var="blog" varStatus="varStatus">  
                    <div class="ibox" ><!--  style="width:31%;float:left;margin-left:25px;margin-top:60px;" -->
                        <div class="ibox-content">
                            <a href="blog/blogArticle" class="btn-link">
                                <h2>
                                    ${blog.title}
                                </h2>
                            </a>
                            <div class="small m-b-xs">
                                <strong>${blog.editer}</strong> <span class="text-muted"><i class="fa fa-clock-o"></i> ${blog.time }</span>
                            </div>
                            <p>
                                ${blog.content }
                            </p>
                            <div class="row">
                                <div class="col-md-6">
                                        <h5>Tags: ${blog.keywords }</h5>
                                        <button class="btn btn-primary btn-xs" type="button">Model</button>
                                        <button class="btn btn-white btn-xs" type="button">Publishing</button>
                                </div>
                                <div class="col-md-6">
                                    <div class="small text-right">
                                        <h5>Stats:</h5>
                                        <div> <i class="fa fa-comments-o"> </i> 56 comments </div>
                                        <i class="fa fa-eye"> </i> 144 views
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>         
                    </c:forEach>         
                </div>     
                 <div class="col-lg-6">              
                   <c:forEach items="${blogList}" var="blog" varStatus="varStatus">  
                    <div class="ibox" ><!--  style="width:31%;float:left;margin-left:25px;margin-top:60px;" -->
                        <div class="ibox-content">
                            <a href="blog/blogArticle" class="btn-link">
                                <h2>
                                    ${blog.title}
                                </h2>
                            </a>
                            <div class="small m-b-xs">
                                <strong>${blog.editer}</strong> <span class="text-muted"><i class="fa fa-clock-o"></i> ${blog.time }</span>
                            </div>
                            <p>
                                ${blog.content }
                            </p>
                            <div class="row">
                                <div class="col-md-6">
                                        <h5>Tags: ${blog.keywords }</h5>
                                        <button class="btn btn-primary btn-xs" type="button">Model</button>
                                        <button class="btn btn-white btn-xs" type="button">Publishing</button>
                                </div>
                                <div class="col-md-6">
                                    <div class="small text-right">
                                        <h5>Stats:</h5>
                                        <div> <i class="fa fa-comments-o"> </i> 56 comments </div>
                                        <i class="fa fa-eye"> </i> 144 views
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>         
                    </c:forEach>         
                </div>     
            </div>
            <div class="footer">
               <div class="pull-right">
                10GB of <strong>250GB</strong> Free.
               </div>
               <div>
                <strong>Copyright</strong> Example Company &copy; 2014-2017
               </div>
           </div>

        </div>
   </div>
        



    <!-- Mainly scripts -->
    <script src="./style/blog/js/jquery-2.1.1.js"></script>
    <script src="./style/blog/js/bootstrap.min.js"></script>
    <script src="./style/blog/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="./style/blog/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="./style/blog/js/inspinia.js"></script>
    <script src="./style/blog/js/plugins/pace/pace.min.js"></script>

</body>
</html>
