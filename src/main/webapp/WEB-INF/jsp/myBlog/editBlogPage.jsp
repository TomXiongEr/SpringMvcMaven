<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
    <title>发表博客</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="description" content="博客编辑页">
	
	<!--css文件-->
	<link href="<c:url value="/style/blog"/>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<c:url value="/style/blog"/>/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="<c:url value="/style/blog"/>/css/plugins/summernote/summernote.css" rel="stylesheet">
    <link href="<c:url value="/style/blog"/>/css/plugins/summernote/summernote-bs3.css" rel="stylesheet">
    <link href="<c:url value="/style/blog"/>/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <link href="<c:url value="/style/blog"/>/css/animate.css" rel="stylesheet">
    <link href="<c:url value="/style/blog"/>/css/style.css" rel="stylesheet">
    
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
                <h2>Blog edit</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="index.html">Home</a>
                    </li>
                    <li>
                        <a>博客</a>
                    </li>
                    <li class="active">
                        <strong>编辑</strong>
                    </li>
                </ol>
            </div>
        </div>

        <div class="wrapper wrapper-content animated fadeInRight ecommerce">
            <div class="row">
                <div class="col-lg-12">
                    <div class="tabs-container">
                            <ul class="nav nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#tab-1">编辑</a></li>
                                <li class=""><a data-toggle="tab" href="#tab-2"> Data</a></li>
                                <li class=""><a data-toggle="tab" href="#tab-3"> Discount</a></li>
                                <li class=""><a data-toggle="tab" href="#tab-4"> Images</a></li>
                            </ul>
                            <div class="tab-content">
                                <div id="tab-1" class="tab-pane active">
                                    <div class="panel-body">
                                    <form action="<%=basePath%>blog/saveBlogData" id="editForm" method="post">
                                        <fieldset class="form-horizontal">
                                            <div class="form-group"><label class="col-sm-2 control-label">标题:</label>
                                                <div class="col-sm-10"><input type="text" name="title" id="title" class="form-control" placeholder="输入博客标题"></div>
                                            </div>               
                                            <div class="form-group" id="data_1"><label class="col-sm-2 control-label">发布日期:</label>
                                             <div class="col-sm-10">
                                                <div class="input-group date">
                                                   <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" name="publishDate" readonly=true id="publishDate" class="form-control" placeholder="发布日期" value="">
                                                </div>
                                             </div>
                                            </div>
                                           
                                            <div class="form-group"><label class="col-sm-2 control-label">作者:</label>
                                                <div class="col-sm-10"><input type="text" name="editer" id="editer" class="form-control" placeholder="输入作者名称"></div>
                                            </div>
                                            
                                            <div class="form-group"><label class="col-sm-2 control-label">类型:</label>
                                                <div class="col-sm-10"><input type="text" name="type" id="type" class="form-control" placeholder="文章类型"></div>
                                            </div>
                                             <div class="form-group"><label class="col-sm-2 control-label">关键字:</label>
                                                <div class="col-sm-10"><input type="text" name="keywords" id="keywords" class="form-control" placeholder="关键字以,隔开如:keyword1,keyword2..."></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">内容:</label>
                                                <div class="col-sm-10">
                                                    <div class="summernote"></div>
                                                </div>
                                                <input type="hidden" name="content" id="content" class="form-control" >
                                            </div>
                                        </fieldset>
                                    </form>
                                    <div align="center">
                                      <div   style="float:left;margin-left:40%;"><button class="btn btn-primary" type="button" onclick="submit();"><i class="fa fa-check"></i>&nbsp;提交</button></div>
                                      <div  id="alert-danger" class="alert alert-danger" style="float:right;margin-right:35%;padding:10px;width:120px;display:none;"></div>
                                    </div>
                                    
                                    </div>
                                </div>
                                <div id="tab-2" class="tab-pane">
                                    <div class="panel-body">

                                        <fieldset class="form-horizontal">
                                            <div class="form-group"><label class="col-sm-2 control-label">ID:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" placeholder="543"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">Model:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" placeholder="..."></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">Location:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" placeholder="location"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">Tax Class:</label>
                                                <div class="col-sm-10">
                                                    <select class="form-control" >
                                                        <option>option 1</option>
                                                        <option>option 2</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">Quantity:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" placeholder="Quantity"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">Minimum quantity:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" placeholder="2"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">Sort order:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" placeholder="0"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">Status:</label>
                                                <div class="col-sm-10">
                                                    <select class="form-control" >
                                                        <option>option 1</option>
                                                        <option>option 2</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </fieldset>

                                    </div>
                                </div>
                                <div id="tab-3" class="tab-pane">
                                    <div class="panel-body">

                                        <div class="table-responsive">
                                            <table class="table table-stripped table-bordered">
                                                <thead><tr>
                                                <th>Group</th>
                                                    <th>Quantity</th>
                                                    <th>Discount</th>
                                                    <th style="width: 20%"> Date start</th>
                                                    <th style="width: 20%">Date end</th>
                                                    <th>Actions</th>
                                                </tr></thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <select class="form-control" >
                                                            <option selected>Group 1</option>
                                                            <option>Group 2</option>
                                                            <option>Group 3</option>
                                                            <option>Group 4</option>
                                                        </select>
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" placeholder="10">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" placeholder="$10.00">
                                                    </td>
                                                    <td>
                                                        <div class="input-group date">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control" value="07/01/2014">
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="input-group date">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control" value="07/01/2014">
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button class="btn btn-white"><i class="fa fa-trash"></i> </button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <select class="form-control" >
                                                            <option selected>Group 1</option>
                                                            <option>Group 2</option>
                                                            <option>Group 3</option>
                                                            <option>Group 4</option>
                                                        </select>
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" placeholder="10">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" placeholder="$10.00">
                                                    </td>
                                                    <td>
                                                        <div class="input-group date">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control" value="07/01/2014">
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="input-group date">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control" value="07/01/2014">
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button class="btn btn-white"><i class="fa fa-trash"></i> </button>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>

                                    </div>
                                </div>
                                <div id="tab-4" class="tab-pane">
                                    <div class="panel-body">

                                        <div class="table-responsive">
                                            <table class="table table-bordered table-stripped">
                                                <thead>
                                                <tr>
                                                    <th>
                                                        Image preview
                                                    </th>
                                                    <th>
                                                        Image url
                                                    </th>
                                                    <th>
                                                        Sort order
                                                    </th>
                                                    <th>
                                                        Actions
                                                    </th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <img src="img/gallery/2s.jpg">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" disabled value="http://mydomain.com/images/image1.png">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" value="1">
                                                    </td>
                                                    <td>
                                                        <button class="btn btn-white"><i class="fa fa-trash"></i> </button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <img src="img/gallery/1s.jpg">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" disabled value="http://mydomain.com/images/image2.png">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" value="2">
                                                    </td>
                                                    <td>
                                                        <button class="btn btn-white"><i class="fa fa-trash"></i> </button>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
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

<!-- Mainly scripts -->
<script src="<c:url value="/style/blog"/>/js/jquery-2.1.1.js"></script>
<script src="<c:url value="/style/blog"/>/js/bootstrap.min.js"></script>
<script src="<c:url value="/style/blog"/>/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="<c:url value="/style/blog"/>/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="<c:url value="/style/blog"/>/js/inspinia.js"></script>
<script src="<c:url value="/style/blog"/>/js/plugins/pace/pace.min.js"></script>

<!-- SUMMERNOTE -->
<script src="<c:url value="/style/blog"/>/js/plugins/summernote/summernote.min.js"></script>
<script src="<c:url value="/style/blog"/>/js/plugins/summernote/summernote-zh-CN.js"></script>
<!-- Data picker -->
<script src="<c:url value="/style/blog"/>/js/plugins/datapicker/bootstrap-datepicker.js"></script>

<script>
    $(document).ready(function(){
        //初始化富文本编辑器
        $('.summernote').summernote({
          height: 300,  
          minHeight: null,             // set minimum height of editor
      	  maxHeight: null,             // set maximum height of editor
      	  focus: true
        });
       
        //初始化日期控件;
        $('.input-group.date').datepicker({
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true,
            todayHighlight:true
        });
    });
  
    //表单提交;
    function submit(){
    	if(validate()){
    	   $("#content").val($('.summernote').summernote('code'));//获取富文本内容;
    	   $("#editForm").submit();
    	}
    }
    
    //验证输入的合法性;
    function validate(){	
       if($("#title").val()=="" || $("#publishDate").val()==""
    	   ){
    	    var summernote=$('.summernote').summernote('code');
    	    if($("#title").val()==""){
       		  $('#title').css('borderColor','red');
       		  $("#alert-danger").html("请输入标题!");
       	    }else{
       	    	$('#title').css('borderColor','');
       	    }
       	    if($("#publishDate").val()==""){
       		  $('#publishDate').css('borderColor','red');
       		  $("#alert-danger").html("请输入发布日期!");
       	    }else{
       	    	$('#publishDate').css('borderColor','');
       	    }
       	    if(summernote=="" ||summernote=="<p><br></p>"){
       	    	$(".col-sm-10").css('borderColor','red');
       	    	$("#alert-danger").html("请输入内容!");
       	    }else{
       	    	$(".col-sm-10").css('borderColor','');
       	    }
       	 $("#alert-danger").show();
       	  return false;
       }else{
    	   $("#alert-danger").hide();
    	  return true;
       }
    }
   
</script>
</body>
</html>
