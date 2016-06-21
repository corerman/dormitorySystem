<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="livingClean.*"%>
<% String name=(String)session.getAttribute("nowUser"); 
   if(name!=null){%>
<%}else{ %>
<%response.sendRedirect("index.jsp"); %>
	
<%} %>
<!doctype html>
<html lang="en"><head>
    <meta charset="utf-8">
    <title>卫生管理</title>
	<META HTTP-EQUIV="pragma" CONTENT="no-cache"> 
	<META HTTP-EQUIV="Cache-Control" CONTENT= "no-cache, must-revalidate"> 
	<META HTTP-EQUIV="expires" CONTENT= "Wed, 26 Feb 1997 08:21:57 GMT"> 
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link href='http://fonts.useso.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">

    <script src="lib/jquery-1.11.1.min.js" type="text/javascript"></script>

    

    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <link rel="stylesheet" type="text/css" href="stylesheets/premium.css">
	
</head>
<body class=" theme-blue">

    <!-- Demo page code -->

    <script type="text/javascript">
        $(function() {
            var match = document.cookie.match(new RegExp('color=([^;]+)'));
            if(match) var color = match[1];
            if(color) {
                $('body').removeClass(function (index, css) {
                    return (css.match (/\btheme-\S+/g) || []).join(' ')
                })
                $('body').addClass('theme-' + color);
            }

            $('[data-popover="true"]').popover({html: true});
            
        });
    </script>
    <style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .navbar-default .navbar-brand, .navbar-default .navbar-brand:hover { 
            color: #fff;
        }
    </style>

    <script type="text/javascript">
        $(function() {
            var uls = $('.sidebar-nav > ul > *').clone();
            uls.addClass('visible-xs');
            $('#main-menu').append(uls.clone());
        });
    </script>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
  

  <!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
  <!--[if IE 7 ]> <body class="ie ie7 "> <![endif]-->
  <!--[if IE 8 ]> <body class="ie ie8 "> <![endif]-->
  <!--[if IE 9 ]> <body class="ie ie9 "> <![endif]-->
  <!--[if (gt IE 9)|!(IE)]><!--> 
   
  <!--<![endif]-->

    <div class="navbar navbar-default" role="navigation">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="" href="index.html"><span class="navbar-brand"><span class="fa fa-paper-plane"></span> 管理员后台</span></a></div>

        <div class="navbar-collapse collapse" style="height: 1px;">
          <ul id="main-menu" class="nav navbar-nav navbar-right">
            <li class="dropdown hidden-xs">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <span class="glyphicon glyphicon-user padding-right-small" style="position:relative;top: 3px;"></span> 
                    
                    <i class="fa fa-caret-down"></i>
                </a>

              <ul class="dropdown-menu">
                <li><a tabindex="-1" href="index.jsp">登出</a></li>
              </ul>
            </li>
          </ul>

        </div>
      </div>
    </div>
    

    <div class="sidebar-nav">
    <ul>
    <li><a href="#" data-target=".dashboard-menu" class="nav-header" data-toggle="collapse"><i class="fa fa-fw fa-dashboard"></i> 控制面板<i class="fa fa-collapse"></i></a></li>
    <li><ul class="dashboard-menu nav nav-list collapse in">
         <li><a href="manage.jsp"><span class="fa fa-caret-right"></span> 概况</a></li>
            <li ><a href="gonggao.jsp"><span class="fa fa-caret-right"></span> 公告管理</a></li>
            <li ><a href="baoxiu.jsp"><span class="fa fa-caret-right"></span> 报修管理</a></li>
            <li ><a href="weisheng.jsp"><span class="fa fa-caret-right"></span> 卫生检查</a></li>
            
    </ul></li>

    
    </div>

    <div class="content">
        <div class="header">
            
            <h1 class="page-title">卫生检查</h1>
                    <ul class="breadcrumb">
            <li><a href="manage.jsp">控制面板</a> </li>
            <li class="active">卫生检查</li>
        </ul>

        </div>
        <div class="main-content">
            
<div class="btn-toolbar list-toolbar">
    <button id="addbtn" class="btn btn-primary"><i class="fa fa-plus"></i>&nbsp;添加检查</button>
    
  <div class="btn-group">
  </div>
</div>
<table class="table">
  <thead>
    <tr>
      <th >#</th>
      <th>宿舍楼</th>
      <th>优秀</th>
      <th>中等</th>
      <th>较差</th>
      <th style="width: 3.5em;"></th>
    </tr>
  </thead>
  <tbody>
  <%
  		int listCount;
  		LivingCleanDAO dao=new LivingCleanDAO();
		List<LivingClean>  list = new ArrayList<LivingClean>();
		dao.getSession().beginTransaction();
		list=dao.findAll();	
		dao.getSession().beginTransaction().commit();
		dao.getSession().clear();
		dao.getSession().close();
		listCount=list.size();
  		for(int i=0;i<listCount;i++)
  		{
  			out.println("<tr>");
  			out.println("<td id=\"xuhao"+list.get(i).getId()+"\" >"+list.get(i).getId()+"</td>");
  			out.println("<td id=\"sushelou"+list.get(i).getId()+"\" >"+list.get(i).getSushelou()+"</td>");
  			out.println("<td id=\"good"+list.get(i).getId()+"\" >"+list.get(i).getGoodlevel()+"</td>");
  			out.println("<td id=\"mid"+list.get(i).getId()+"\" >"+list.get(i).getBadlevel()+"</td>");
  			out.println("<td id=\"bad"+list.get(i).getId()+"\" >"+list.get(i).getBadlevel()+"</td>");
  			out.println("<td>");
  			out.println("<a id=\"edit"+list.get(i).getId()+"\""+" onclick=\"editweisheng("+list.get(i).getId()+");\"  href=\"#\" ><i class=\"fa fa-pencil\"></i></a>");
  			out.println("<a id=\"del"+list.get(i).getId()+"\""+"  href=\"#myModal\" onclick=\"setPageVar("+list.get(i).getId()+")\"  role=\"button\" data-toggle=\"modal\"><i class=\"fa fa-trash-o\"></i></a>");
  		}
  
   %>
   
  </tbody>
</table>



<div class="modal small fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">删除确认</h3>
        </div>
        <div class="modal-body">
            <p class="error-text"><i class="fa fa-warning modal-icon"></i>您确定要删除此项公告？</p>
        </div>
        <div class="modal-footer">
            <button id="cancel" class="btn btn-default" data-dismiss="modal" aria-hidden="true">Cancel</button>
            <button id="delete" class="btn btn-danger" data-dismiss="modal">Delete</button>
        	<input type="hidden" id="delectid" value="" />
        </div>
      </div>
    </div>
</div>

<div id="editweisheng" style="width:auto;height:80px;display:none;margin-top:20px;">
	<center><form  action="" method="post">
		<input type="hidden" name="id" id="newid" />
		宿舍楼：<input type="text" name="sushelou" value="" id="newsushelou" />
		优秀：<input type="text" name="goodlevel" style="width:100px;" value="" id="newgood" />
		中等：<input type="text" name="midlevel" style="width:100px;" value="" id="newmid" />
		较差：<input type="text" name="badlevel" style="width:100px;" value="" id="newbad" />
		<input type="button"  id="editbtn1" value="修改" />
	</form></center>
</div>

<div id="addweisheng" style="width:auto;height:80px;display:none;margin-top:20px;">
	<center><form  action="" method="post">
		宿舍楼：<input type="text" name="sushelou" value="" id="newsushelou1" />
		优秀：<input type="text" name="goodlevel" style="width:100px;" value="" id="newgood1" />
		中等：<input type="text" name="midlevel" style="width:100px;" value="" id="newmid1" />
		较差：<input type="text" name="badlevel" style="width:100px;" value="" id="newbad1" />
		<input type="button"  id="addbtn1" value="添加" />
	</form></center>
</div>

            <footer>
                <hr>

                
                 <p>© 2016 <a href="#" target="_blank">李彪</a></p>
            </footer>
        </div>
    </div>


    <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
    
  <script>
  	function editweisheng(i){
  		 $("#editweisheng").fadeIn("slow");
  		 document.getElementById("newid").value=document.getElementById("xuhao"+i).innerHTML;
		document.getElementById("newsushelou").value=document.getElementById("sushelou"+i).innerHTML;
		document.getElementById("newgood").value=document.getElementById("good"+i).innerHTML;
		document.getElementById("newmid").value=document.getElementById("mid"+i).innerHTML;
		document.getElementById("newbad").value=document.getElementById("bad"+i).innerHTML;
  	}
  	
function editPost(){
   $.ajax({
            //提交数据的类型 POST GET
            type:"POST",
            //提交的网址
            url:"editWeiSheng",
            //提交的数据
            data:{id:document.getElementById("newid").value,sushelou:document.getElementById("newsushelou").value,goodlevel:document.getElementById("newgood").value,midlevel:document.getElementById("newmid").value,badlevel:document.getElementById("newbad").value},
            //返回数据的格式
            datatype: "json",//"xml", "html", "script", "json", "jsonp", "text".
            //在请求之前调用的函数
           // beforeSend:function(){$("#msg").html("logining");},
            //成功返回之后调用的函数             
            success:function(data){
            	if(data.indexOf("success")!=-1)
         			alert("修改成功");           
            }   ,
            //调用执行后调用的函数
            complete: function(XMLHttpRequest, textStatus){
            //   alert(XMLHttpRequest.responseText);
              // alert(textStatus);
                //HideLoading();
            },
            //调用出错执行的函数
            error: function(){
                //请求出错处理
            }         
         });

  }	
  </script>
  
  <script>
	  $("#editbtn1").click(function(){
	 	 editPost();
		document.getElementById("sushelou"+document.getElementById("newid").value).innerHTML=document.getElementById("newsushelou").value;
		document.getElementById("good"+document.getElementById("newid").value).innerHTML=document.getElementById("newgood").value;
		document.getElementById("mid"+document.getElementById("newid").value).innerHTML=document.getElementById("newmid").value;
		document.getElementById("xuhao"+document.getElementById("newid").value).innerHTML=document.getElementById("newid").value;
		document.getElementById("bad"+document.getElementById("newid").value).innerHTML=document.getElementById("newbad").value;
		$("#editweisheng").fadeOut("slow");
		
	});
	
	function setPageVar(id){
		document.getElementById('delectid').value=id;
		//alert(id);
	}
	
	 $("#delete").click(function(){
	 	 id=document.getElementById('delectid').value
	 	 deletePost(id);
	 	 window.location.href="weisheng.jsp"; 
		});
		
function deletePost(i){
   $.ajax({
            //提交数据的类型 POST GET
            type:"POST",
            //提交的网址
            url:"delWeiSheng",
            //提交的数据
            data:{id:i},
            //返回数据的格式
            datatype: "json",//"xml", "html", "script", "json", "jsonp", "text".
            //在请求之前调用的函数
           // beforeSend:function(){$("#msg").html("logining");},
            //成功返回之后调用的函数             
            success:function(data){
            	if(data.indexOf("success")!=-1)
         			alert("删除成功");         
            }   ,
            //调用执行后调用的函数
            complete: function(XMLHttpRequest, textStatus){
            //   alert(XMLHttpRequest.responseText);
              // alert(textStatus);
                //HideLoading();
            },
            //调用出错执行的函数
            error: function(){
                //请求出错处理
            }         
         });
		 
  }	
  </script>
  
  <script>
  	 $("#addbtn").click(function(){
		
			$("#addweisheng").fadeIn("slow");
			
		});

 	 $("#addbtn1").click(function(){
		
			addPost();
		//	alert("debug add");
			$("#addNotice").fadeOut("slow");
			window.location.href="weisheng.jsp";  
		});

function addPost(){
	time=getNowFormatDate();
   $.ajax({
            //提交数据的类型 POST GET
            type:"POST",
            //提交的网址
            url:"addWeisheng",
            //提交的数据
            data:{sushelou:document.getElementById("newsushelou1").value,goodlevel:document.getElementById("newgood1").value,midlevel:document.getElementById("newmid1").value,badlevel:document.getElementById("newbad1").value},
            //返回数据的格式
            datatype: "json",//"xml", "html", "script", "json", "jsonp", "text".
            //在请求之前调用的函数
           // beforeSend:function(){$("#msg").html("logining");},
            //成功返回之后调用的函数             
            success:function(data){
            	if(data.indexOf("success")!=-1)
         			alert("添加公告成功");     
            }   ,
            //调用执行后调用的函数
            complete: function(XMLHttpRequest, textStatus){
            //   alert(XMLHttpRequest.responseText);
              // alert(textStatus);
                //HideLoading();
            },
            //调用出错执行的函数
            error: function(){
                //请求出错处理
            }         
         });
		 
  }	
  
  
  
  
  
  
  </script>
  <script type="text/javascript">
  function getNowFormatDate() {
    var date = new Date();
    var seperator1 = "-";
    var seperator2 = ":";
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    if (month >= 1 && month <= 9) {
        month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
        strDate = "0" + strDate;
    }
    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate;
    return currentdate;
}
  </script>
  
</body></html>
