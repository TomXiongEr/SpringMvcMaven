<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"   prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>我的博文</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
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
                    <h2>Article</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li>
                            <a>Miscellaneous</a>
                        </li>
                        <li class="active">
                            <strong>Article</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2"></div>
            </div>

        <div class="wrapper wrapper-content  animated fadeInRight article">
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1">
                    <div class="ibox">
                        <div class="ibox-content">
                            <div class="pull-right">
                                <button class="btn btn-white btn-xs" type="button">Model</button>
                                <button class="btn btn-white btn-xs" type="button">Publishing</button>
                                <button class="btn btn-white btn-xs" type="button">Modern</button>
                            </div>
                            <div class="text-center article-title" >
                            <span class="text-muted"><i class="fa fa-clock-o"></i><fmt:formatDate value="${blog.publishDate}" pattern="yyyy-MM-dd"/></span>
                            </div>
                            <!--博客正文内容-->
                            ${blog.content}
                            <hr>
                            <div class="row">
                                <div class="col-md-6">
                                   <h5>Tags:</h5>
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

                            <div class="row">
                                <div class="col-lg-12">

                                    <h2>Comments:</h2>
                                    <div class="social-feed-box">
                                        <div class="social-avatar">
                                          <a href="" class="pull-left">
                                              <img alt="image" src="./style/blog/img/a1.jpg">
                                          </a>
                                          <div class="media-body">
                                              <a href="#">
                                                  Andrew Williams
                                              </a>
                                              <small class="text-muted">Today 4:21 pm - 12.06.2014</small>
                                          </div>
                                        </div>
                                        <div class="social-body">
                                            <p>
                                                Many desktop publishing packages and web page editors now use Lorem Ipsum as their
                                                default model text, and a search for 'lorem ipsum' will uncover many web sites still
                                                default model text.
                                            </p>
                                        </div>
                                    </div>
                                    <div class="social-feed-box">
                                        <div class="social-avatar">
                                            <a href="" class="pull-left">
                                                <img alt="image" src="./style/blog/img/a2.jpg">
                                            </a>
                                            <div class="media-body">
                                                <a href="#">
                                                    Michael Novek
                                                </a>
                                                <small class="text-muted">Today 4:21 pm - 12.06.2014</small>
                                            </div>
                                        </div>
                                        <div class="social-body">
                                            <p>
                                                Many desktop publishing packages and web page editors now use Lorem Ipsum as their
                                                default model text, and a search for 'lorem ipsum' will uncover many web sites still
                                                default model text, and a search for 'lorem ipsum' will uncover many web sites still
                                                in their infancy. Packages and web page editors now use Lorem Ipsum as their
                                                default model text.
                                            </p>
                                        </div>
                                    </div>
                                    <div class="social-feed-box">
                                        <div class="social-avatar">
                                            <a href="" class="pull-left">
                                                <img alt="image" src="./style/blog/img/a3.jpg">
                                            </a>
                                            <div class="media-body">
                                                <a href="#">
                                                    Alice Mediater
                                                </a>
                                                <small class="text-muted">Today 4:21 pm - 12.06.2014</small>
                                            </div>
                                        </div>
                                        <div class="social-body">
                                            <p>
                                                Many desktop publishing packages and web page editors now use Lorem Ipsum as their
                                                default model text, and a search for 'lorem ipsum' will uncover many web sites still
                                                in their infancy. Packages and web page editors now use Lorem Ipsum as their
                                                default model text.
                                            </p>
                                        </div>
                                    </div>
                                    <div class="social-feed-box">
                                        <div class="social-avatar">
                                            <a href="" class="pull-left">
                                                <img alt="image" src="./style/blog/img/a5.jpg">
                                            </a>
                                            <div class="media-body">
                                                <a href="#">
                                                    Monica Flex
                                                </a>
                                                <small class="text-muted">Today 4:21 pm - 12.06.2014</small>
                                            </div>
                                        </div>
                                        <div class="social-body">
                                            <p>
                                                Many desktop publishing packages and web page editors now use Lorem Ipsum as their
                                                default model text, and a search for 'lorem ipsum' will uncover many web sites still
                                                in their infancy. Packages and web page editors now use Lorem Ipsum as their
                                                default model text.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- 页脚 -->
        <jsp:include page="../base/footer.jsp" />
        </div>
        </div>

    <!--js文件 -->
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
