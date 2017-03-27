<%@ page contentType="text/html; charset=GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <title>我的博客</title>
    <link href="./style/blog/css/bootstrap.min.css" rel="stylesheet">
    <link href="./style/blog/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="./style/blog/css/animate.css" rel="stylesheet">
    <link href="./style/blog/css/style.css" rel="stylesheet">
</head>

<style>
.dropdown a{
  display: inline-block;
  padding: 10px;
}
.dropdown a{
  color: #fff;
  font-size: 16px;
  padding: 15px 25px;
  text-decoration: none;
  text-transform: capitalize;
}
</style>

<body class="top-navigation">
    <div id="wrapper">
        <div id="page-wrapper" class="gray-bg">      
                <div class="row border-bottom white-bg">
        <nav class="navbar navbar-static-top" role="navigation">
            <div class="navbar-header">
                <button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                    <i class="fa fa-reorder"></i>
                </button>
                <a href="#" class="navbar-brand">Welcome</a>
            </div>
            <div class="navbar-collapse collapse" id="navbar">
            <div align="center">
                <ul class="nav navbar-nav" style="padding-left:22%;">
                    <li class="active">
                        <a aria-expanded="false" role="button" href="layouts.html" style="font-size:15px;">欢迎来到我的博客</a>
                    </li>
                    <li class="dropdown">
                        <a role="button" href="<c:url value="/index"/>">首页</span></a>
                    </li>
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Menu item <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                            <li><a href="">Menu item</a></li>
                            <li><a href="">Menu item</a></li>                          
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Menu item <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                            <li><a href="">Menu item</a></li>
                            <li><a href="">Menu item</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Menu item <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                            <li><a href="">Menu item</a></li>
                            <li><a href="">Menu item</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <ul class="nav navbar-top-links navbar-right">
                <li>
                    <a href="<c:url value='/login'/>">
                        <i class="fa fa-sign-in"></i> Log in
                    </a>
                </li>
            </ul>
            </div>
        </nav>
        </div>
        
        <div class="row">
            <div class="col-lg-9">
                <div class="wrapper wrapper-content animated fadeInUp">
                    <div class="ibox">
                        <div class="ibox-content">
                   	              <div style="background-color:#ffffff;">
	              <div class="wrapper wrapper-content  animated fadeInRight blog">
				     <form action="" id="form" method="post">
				      <c:forEach items="${blogList}" var="blog" varStatus="varStatus">  
				         <div class="row">
				             <div class="col-lg-12">              
				                 <div class="ibox">
				                     <div class="ibox-content">
				                         <a href="blog/articleDetail?id=${blog.id}" class="btn-link">
				                             <h2>${blog.title}</h2>
				                         </a>
				                         <div class="small m-b-xs">
				                             <strong>${blog.editer}</strong> 
				                             <span class="text-muted"><i class="fa fa-clock-o"></i> ${blog.publishDate }</span>
				                         </div>
				                         <div class="textLimit" style="font-size:2px;">${blog.content}</div>
				                         <div class="row">
				                             <div class="col-md-6">
				                                     <h5>Tags: ${blog.keywords }</h5>
				                                     <button class="btn btn-primary btn-xs" type="button">Model</button>
				                                     <button class="btn btn-white btn-xs" type="button">Publishing</button>
				                             </div>
				                             <div class="col-md-6">
			                                 <div class="small text-right">
			                                     <h4>Stats:</h4>
			                                     <div> <i class="fa fa-comments-o"> </i> 56 comments </div>
			                                     <i class="fa fa-eye"> </i> 144 views
			                                 </div>
				                             </div>
				                         </div>
				                     </div>
				                 </div>             
				             </div>     
				         </div>
				      </c:forEach> 
				      </form>
					      
				      <div align="center">
				            <ul class="pagination" id="paginator"></ul>
				      </div>
			     </div>
			     </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3" >
                <div class="wrapper wrapper-content project-manager">
                    <h4>Project description</h4>
                    <img src="img/zender_logo.png" class="img-responsive">
                    <p class="small">
                        There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look
                        even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing
                    </p>
                    <p class="small font-bold">
                        <span><i class="fa fa-circle text-warning"></i> High priority</span>
                    </p>
                    <h5>Project tag</h5>
                    <ul class="tag-list" style="padding: 0">
                        <li><a href=""><i class="fa fa-tag"></i> Zender</a></li>
                        <li><a href=""><i class="fa fa-tag"></i> Lorem ipsum</a></li>
                        <li><a href=""><i class="fa fa-tag"></i> Passages</a></li>
                        <li><a href=""><i class="fa fa-tag"></i> Variations</a></li>
                    </ul>
                    <h5>Project files</h5>
                    <ul class="list-unstyled project-files">
                        <li><a href=""><i class="fa fa-file"></i> Project_document.docx</a></li>
                        <li><a href=""><i class="fa fa-file-picture-o"></i> Logo_zender_company.jpg</a></li>
                        <li><a href=""><i class="fa fa-stack-exchange"></i> Email_from_Alex.mln</a></li>
                        <li><a href=""><i class="fa fa-file"></i> Contract_20_11_2014.docx</a></li>
                    </ul>
                    <div class="text-center m-t-md">
                        <a href="#" class="btn btn-xs btn-primary">Add files</a>
                        <a href="#" class="btn btn-xs btn-primary">Report contact</a>

                    </div>
                </div>
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

    <script>
        $(document).ready(function(){

            $('#loading-example-btn').click(function () {
                btn = $(this);
                simpleLoad(btn, true)

                // Ajax example
//                $.ajax().always(function () {
//                    simpleLoad($(this), false)
//                });

                simpleLoad(btn, false)
            });
            
            
            var optionParams={
            		currentPage:${pageBean.pageNum},
            		totalPages:${pageBean.pages},
            		requestUrl:"<c:url value='/index'/>?pageNum="
            };
            var options = {
        		   bootstrapMajorVersion: 3, //bootstrap版本
        		   size: 'normal',
        		   itemTexts: function (type, page, current) {
        			   switch (type) {
        				   case "first":
        				   return "首页";
        				   case "prev":
        				   return "<i class='fa fa-caret-left'></i> 上一页";
        				   case "next":
        				   return "下一页 <i class='fa fa-caret-right'></i>";
        				   case "last":
        				   return "末页";
        				   case "page":
        				   return page;
        			   }
        		   },
        		   tooltipTitles: function (type, page, current) {
        			   switch (type) {
        				   case "first":
        				   return "首页";
        				   case "prev":
        				   return "上一页";
        				   case "next":
        				   return "下一页";
        				   case "last":
        				   return "末页";
        				   case "page":
        				   return "第" + page + "页";
        			   }
        		   },
        		   pageUrl: function(type, page, current){
        		       return optionParams.requestUrl+page; //跳转到选定页面
        		   },
        		   /* onPageClicked:function(event,originalEvent, type,page){
        			   $("#form").action=optionParams.requestUrl+page;
        			   $("#form").submit();
        		   }, */
        		   numberOfPages: 6, //显示“第几页”的选项数目
        		   currentPage:optionParams.currentPage<%--<%= pageNo %> --%>, //当前页数
        		   totalPages:optionParams.totalPages<%--<%= totalPages %>--%> //总页数
        		   }
        		   $('#paginator').bootstrapPaginator(options);        
            
            
        });

        function simpleLoad(btn, state) {
            if (state) {
                btn.children().addClass('fa-spin');
                btn.contents().last().replaceWith(" Loading");
            } else {
                setTimeout(function () {
                    btn.children().removeClass('fa-spin');
                    btn.contents().last().replaceWith(" Refresh");
                }, 2000);
            }
        }
    </script>
</body>

</html>
