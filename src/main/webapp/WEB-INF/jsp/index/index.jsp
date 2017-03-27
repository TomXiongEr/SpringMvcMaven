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


.fa-tag{

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
        <div class="wrapper wrapper-content">
            <div class="container">
	             <div class="row">
	                <div class="col-md-2">
	                    <div class="ibox float-e-margins">
	                        <div class="ibox-title">
	                            <span class="label label-success pull-right">Monthly</span>
	                            <h5>Views</h5>
	                        </div>
	                        <div class="ibox-content">
	                            <h1 class="no-margins">386,200</h1>
	                            <div class="stat-percent font-bold text-success">98% <i class="fa fa-bolt"></i></div>
	                            <small>Total views</small>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-md-2">
	                    <div class="ibox float-e-margins">
	                        <div class="ibox-title">
	                            <span class="label label-info pull-right">Annual</span>
	                            <h5>Orders</h5>
	                        </div>
	                        <div class="ibox-content">
	                                    <h1 class="no-margins">80,800</h1>
	                                    <div class="stat-percent font-bold text-info">20% <i class="fa fa-level-up"></i></div>
	                                    <small>New orders</small>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-md-4">
	                    <div class="ibox float-e-margins">
	                        <div class="ibox-title">
	                            <span class="label label-primary pull-right">Today</span>
	                            <h5>visits</h5>
	                        </div>
	                        <div class="ibox-content">
	
	                            <div class="row">
	                                <div class="col-md-6">
	                                    <h1 class="no-margins">$ 406,420</h1>
	                                    <div class="font-bold text-navy">44% <i class="fa fa-level-up"></i> <small>Rapid pace</small></div>
	                                </div>
	                                <div class="col-md-6">
	                                    <h1 class="no-margins">206,120</h1>
	                                    <div class="font-bold text-navy">22% <i class="fa fa-level-up"></i> <small>Slow pace</small></div>
	                                </div>
	                            </div>
	
	                        </div>
	                    </div>
	                </div>
	                <div class="col-md-4">
	                    <div class="ibox float-e-margins">
	                        <div class="ibox-title">
	                            <h5>Monthly income</h5>
	                            <div class="ibox-tools">
	                                <span class="label label-primary">Updated 12.2015</span>
	                            </div>
	                        </div>
	                        <div class="ibox-content no-padding">
	                            <div class="flot-chart m-t-lg" style="height: 55px;">
	                                <div class="flot-chart-content" id="flot-chart1"></div>
	                            </div>
	                        </div>
	
	                    </div>
	                </div>
	            </div>
	             <div class="row">
	                    <div class="col-lg-8">
	                        <div class="ibox float-e-margins">
	                            <div class="ibox-content">
	                                <div>
	                                        <span class="pull-right text-right">
	                                        <small>Average value of sales in the past month in: <strong>United states</strong></small>
	                                            <br/>
	                                            All sales: 162,862
	                                        </span>
	                                    <h3 class="font-bold no-margins">
	                                        Half-year revenue margin
	                                    </h3>
	                                    <small>Sales marketing.</small>
	                                </div>
	
	                                <div class="m-t-sm">
	
	                                    <div class="row">
	                                        <div class="col-md-8">
	                                            <div>
	                                            <canvas id="lineChart" height="114"></canvas>
	                                            </div>
	                                        </div>
	                                        <div class="col-md-4">
	                                            <ul class="stat-list m-t-lg">
	                                                <li>
	                                                    <h2 class="no-margins">2,346</h2>
	                                                    <small>Total orders in period</small>
	                                                    <div class="progress progress-mini">
	                                                        <div class="progress-bar" style="width: 48%;"></div>
	                                                    </div>
	                                                </li>
	                                                <li>
	                                                    <h2 class="no-margins ">4,422</h2>
	                                                    <small>Orders in last month</small>
	                                                    <div class="progress progress-mini">
	                                                        <div class="progress-bar" style="width: 60%;"></div>
	                                                    </div>
	                                                </li>
	                                            </ul>
	                                        </div>
	                                    </div>
	
	                                </div>
	
	                                <div class="m-t-md">
	                                    <small class="pull-right">
	                                        <i class="fa fa-clock-o"> </i>
	                                        Update on 16.07.2015
	                                    </small>
	                                    <small>
	                                        <strong>Analysis of sales:</strong> The value has been changed over time, and last month reached a level over $50,000.
	                                    </small>
	                                </div>
	
	                            </div>
	                        </div>
	                    </div>
	                    <div class="col-lg-4">
	                        <div class="ibox float-e-margins">   
	                           <div class="contact-box center-version">
				                    <a href="profile.html">
				                        <img alt="image" class="img-circle" src="./style/blog/img/a2.jpg">
				                        <h3 class="m-b-xs"><strong>John Smith</strong></h3>
				                        <div class="font-bold">Graphics designer</div>
				                        <address class="m-t-md">
				                            <strong>Twitter, Inc.</strong><br>
				                            795 Folsom Ave, Suite 600<br>
				                            San Francisco, CA 94107<br>
				                            <abbr title="Phone">P:</abbr> (123) 456-7890
				                        </address>
				                        <li><a class="fa-tag"><i class="fa fa-tag"></i> Zender</a></li>
				                        <li><a class="fa-tag" href="project_detail.html"><i class="fa fa-tag"></i> Passages</a></li>
				                    </a>
			                   
				                    <div class="contact-box-footer">
				                        <div class="m-t-xs btn-group">
				                            <a class="btn btn-xs btn-white"><i class="fa fa-phone"></i> Call </a>
				                            <a class="btn btn-xs btn-white"><i class="fa fa-envelope"></i> Email</a>
				                            <a class="btn btn-xs btn-white"><i class="fa fa-user-plus"></i> Follow</a>
				                        </div>
				                    </div>
				                </div>              
	                        </div>
	                    </div>
	                </div>
	             <div class="row">     
	              <!--将博客内容列表迁移到此处-->
	              <div class="col-lg-12">
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
					      
				      <!--分页 -->
				      <div align="center">
				            <ul class="pagination" id="paginator"></ul>
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

    <!-- Mainly scripts -->
    <script src="./style/blog/js/jquery-2.1.1.js"></script>
    <script src="./style/blog/js/bootstrap.min.js"></script>
    <script src="./style/blog/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="./style/blog/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="./style/blog/js/inspinia.js"></script>
    <script src="./style/blog/js/plugins/pace/pace.min.js"></script>

    <!-- Flot -->
    <script src="./style/blog/js/plugins/flot/jquery.flot.js"></script>
    <script src="./style/blog/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="./style/blog/js/plugins/flot/jquery.flot.resize.js"></script>

    <!-- ChartJS-->
    <script src="./style/blog/js/plugins/chartJs/Chart.min.js"></script>

    <!-- Peity -->
    <script src="./style/blog/js/plugins/peity/jquery.peity.min.js"></script>
    <!-- Peity demo -->
    <script src="./style/blog/js/demo/peity-demo.js"></script>

    <!--分页插件bootstrape-pagination.js-->
    <script src="./style/blog/js/bootstrap-paginator.js"></script>
  
    <script>
        $(document).ready(function() {
            var d1 = [[1262304000000, 6], [1264982400000, 3057], [1267401600000, 20434], [1270080000000, 31982], [1272672000000, 26602], [1275350400000, 27826], [1277942400000, 24302], [1280620800000, 24237], [1283299200000, 21004], [1285891200000, 12144], [1288569600000, 10577], [1291161600000, 10295]];
            var d2 = [[1262304000000, 5], [1264982400000, 200], [1267401600000, 1605], [1270080000000, 6129], [1272672000000, 11643], [1275350400000, 19055], [1277942400000, 30062], [1280620800000, 39197], [1283299200000, 37000], [1285891200000, 27000], [1288569600000, 21000], [1291161600000, 17000]];
            var data1 = [
                { label: "Data 1", data: d1, color: '#17a084'},
                { label: "Data 2", data: d2, color: '#127e68' }
            ];
            $.plot($("#flot-chart1"), data1, {
                xaxis: {
                    tickDecimals: 0
                },
                series: {
                    lines: {
                        show: true,
                        fill: true,
                        fillColor: {
                            colors: [{
                                opacity: 1
                            }, {
                                opacity: 1
                            }]
                        },
                    },
                    points: {
                        width: 0.1,
                        show: false
                    },
                },
                grid: {
                    show: false,
                    borderWidth: 0
                },
                legend: {
                    show: false,
                }
            });
            var lineData = {
                labels: ["January", "February", "March", "April", "May", "June", "July"],
                datasets: [
                    {
                        label: "Example dataset",
                        backgroundColor: "rgba(26,179,148,0.5)",
                        borderColor: "rgba(26,179,148,0.7)",
                        pointBackgroundColor: "rgba(26,179,148,1)",
                        pointBorderColor: "#fff",
                        data: [48, 48, 60, 39, 56, 37, 30]
                    },
                    {
                        label: "Example dataset",
                        backgroundColor: "rgba(220,220,220,0.5)",
                        borderColor: "rgba(220,220,220,1)",
                        pointBackgroundColor: "rgba(220,220,220,1)",
                        pointBorderColor: "#fff",
                        data: [65, 59, 40, 51, 36, 25, 40]
                    }
                ]
            };
            var lineOptions = {
                responsive: true
            };

            var ctx = document.getElementById("lineChart").getContext("2d");
            new Chart(ctx, {type: 'line', data: lineData, options:lineOptions});
        });
        

        //bootstrap分页;
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
    </script>
</body>
</html>
