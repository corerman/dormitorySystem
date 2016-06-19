<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"   pageEncoding="utf-8"%>
<%@page import="action.weather"%>
<%@page import="notice.NoticeControl"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ include file="tempete/head.jsp"  %>
<div style="width:100%;height:220px;" >
&nbsp; <!-- Blank Block menu -->
</div>
<div id="page-wrap" style="margin-top:0px;position: relative">
<div class="layout" style="height:380px;" >
<div class="ui-state-error ui-corner-all">
                    <p><span class="ui-icon ui-icon-alert" style="float: left; margin-right: .3em;"></span>
                    <strong>天气预报:</strong><% 
                    weather w=new weather();
                    w.getJsonFromUrl();
                     %>
                     <%="&nbsp;&nbsp;"+w.result %></p>
                  </div>
		<div
			style="position: absolute; width: 280px; height: 170px; right: 30px; top: 70px; padding: 10px;"
			class="ui-widget ui-widget-content ui-corner-all">
			<div class="ui-dialog-content ui-widget-content" 
				style="background: none; border: 0;">
				<span class="ui-icon ui-icon-info"
					style="float: left; margin-right: .3em;"></span>
				<ol style="background-color: #DC143C; border-radius: 3px;"  >
					&nbsp; 
					<a style="color: white;" id="notice1"   >
						公告1
					</a>
				</ol>
				<span class="ui-icon ui-icon-info"
					style="float: left; margin-right: .3em;"></span>
				<ol style="background-color: #DC143C; border-radius: 3px;">
					&nbsp;
					<a style="color: white" id="notice2">公告2</a>
				</ol>

				<span class="ui-icon ui-icon-info"
					style="float: left; margin-right: .3em;"></span>
				<ol style="background-color: #DC143C; border-radius: 3px;">
					&nbsp;
					<a style="color: white" id="notice3">公告3</a>
				</ol>

				<span class="ui-icon ui-icon-info"
					style="float: left; margin-right: .3em;"></span>
				<ol style="background-color: #DC143C; border-radius: 3px;">
					&nbsp;
					<a style="color: white" id="notice4">公告4</a>
				</ol>

				<span class="ui-icon ui-icon-info"
					style="float: left; margin-right: .3em;"></span>
				<ol style="background-color: #DC143C; border-radius: 3px;">
					&nbsp;
					<a style="color: white" id="notice5">公告5</a>
				</ol>
				<button class="ui-button-success" id="btn1"
					style="float: right; border-radius: 3px;">
					更多公告
				</button>

			</div>
		</div>

		<div  id="noticeShowPanel"
			style="position: absolute; width: 280px; height: 60px; right: 30px; top: 270px; padding: 10px; display:none;"
			class="ui-widget ui-widget-content ui-corner-all" >
			<div class="ui-dialog-content ui-widget-content"
				style="background: none; border: 0;" id="NoticeContent"  >
			</div>
		</div>

		<div
			style="position: absolute; width: 480px; height: 300px; left: 40px; top: 60px; padding: 10px;"
			class="ui-widget ui-widget-content ui-corner-all">

                <div class="ui-widget">
                  <center><div class="ui-state-highlight ui-corner-all" style="margin-top:2px; width:50%;">
                    <p><span class="ui-icon ui-icon-info" style="float: left; margin-right: .3em;"></span>
                    每日卫生检查</p>
                  </div></center>
                </div>

		<div
			style="position: absolute; width: 200px; height: 220px; left: 20px; top: 60px; padding: 10px;"
			class="ui-widget ui-widget-content ui-corner-all">
			
               <div class="ui-widget">
                  <center><div class="ui-state-highlight ui-corner-all" style="margin-top:2px; width:50%;">
                    <p id="sushelou1"> 宿舍楼1</p>
                  </div></center>
<center><div style="width:200px; margin-top:-8px;">
	<button class="ui-button-success" style="width:60px;border-radius:5px;" id="goodbtn1">优秀</button>
	<button class="ui-button-primary" style="width:60px;border-radius:5px;" id="midbtn1">中等</button>
	<button class="ui-button-error" style="width:60px;border-radius:5px;" id="badbtn1">较差</button>
</div></center>


		<center><div
			style="position: absolute; width: 180px; height: 115px; left: 10px; top: 92px; padding: 10px;border-width:0px;"
			class="ui-widget ui-widget-content ui-corner-all" id="showinfo1">
			信息显示1
		</div></center>

                </div>
	
		</div>


		<div
			style="position: absolute; width: 200px; height: 220px; right: 20px; top: 60px; padding: 10px;"
			class="ui-widget ui-widget-content ui-corner-all">
			
               <div class="ui-widget">
                  <center><div class="ui-state-highlight ui-corner-all" style="margin-top:2px; width:50%;">
                    <p id="sushelou2"> 宿舍楼2</p>
                  </div></center>
                  
<center><div style="width:200px; margin-top:-8px;">
	<button class="ui-button-success" style="width:60px;border-radius:5px;" id="goodbtn2">优秀</button>
	<button class="ui-button-primary" style="width:60px;border-radius:5px;" id="midbtn2">中等</button>
	<button class="ui-button-error" style="width:60px;border-radius:5px;" id="badbtn2">较差</button>
</div></center>
 
 		<center><div
			style="position: absolute; width: 180px; height: 115px; left: 10px; top: 92px; padding: 10px; border-width:0px;"
			class="ui-widget ui-widget-content ui-corner-all" id="showinfo2">
			显示信息2
		</div></center>
 
 
                </div>

		</div>

		</div>
		
              
      
                
		
	</div>
</div>
<script>

	$.ajax({async:'false',type:'get',url:'NoticeTitleByIdSearch?id=1',success:function(data){
			document.getElementById('notice1').innerHTML=data.substr(1,data.length-2);
	}})
		$.ajax({async:'false',type:'get',url:'NoticeTitleByIdSearch?id=2',success:function(data){
			document.getElementById('notice2').innerHTML=data.substr(1,data.length-2);
	}})
			$.ajax({async:'false',type:'get',url:'NoticeTitleByIdSearch?id=5',success:function(data){
			document.getElementById('notice5').innerHTML=data.substr(1,data.length-2);
	}})
			$.ajax({async:'false',type:'get',url:'NoticeTitleByIdSearch?id=3',success:function(data){
			document.getElementById('notice3').innerHTML=data.substr(1,data.length-2);
	}})
			$.ajax({async:'false',type:'get',url:'NoticeTitleByIdSearch?id=4',success:function(data){
			document.getElementById('notice4').innerHTML=data.substr(1,data.length-2);
	}})
</script>

<script>
	
	

	
	$("#notice1").click(function(){
	$("#noticeShowPanel").fadeOut("slow");
	$("#noticeShowPanel").fadeIn("slow");
	
	$.ajax({async:'false',type:'get',url:'NoticeContentByIdSearch?id=1',success:function(data){
			document.getElementById('NoticeContent').innerHTML=data.substr(1,data.length-2);
	}})
	})	
		$("#notice2").click(function(){
		$("#noticeShowPanel").fadeOut("slow");
	$("#noticeShowPanel").fadeIn("slow");
	$.ajax({async:'false',type:'get',url:'NoticeContentByIdSearch?id=2',success:function(data){
			document.getElementById('NoticeContent').innerHTML=data.substr(1,data.length-2);
	}})
	})	
		$("#notice3").click(function(){
		$("#noticeShowPanel").fadeOut("slow");
	$("#noticeShowPanel").fadeIn("slow");
	$.ajax({async:'false',type:'get',url:'NoticeContentByIdSearch?id=3',success:function(data){
			document.getElementById('NoticeContent').innerHTML=data.substr(1,data.length-2);
	}})
	})	
		$("#notice4").click(function(){
		$("#noticeShowPanel").fadeOut("slow");
	$("#noticeShowPanel").fadeIn("slow");
	
	$.ajax({async:'false',type:'get',url:'NoticeContentByIdSearch?id=4',success:function(data){
			document.getElementById('NoticeContent').innerHTML=data.substr(1,data.length-2);
	}})
	})	
		$("#notice5").click(function(){
	$("#noticeShowPanel").fadeOut("slow");
	$("#noticeShowPanel").fadeIn("slow");
		
	$.ajax({async:'false',type:'get',url:'NoticeContentByIdSearch?id=5',success:function(data){
			document.getElementById('NoticeContent').innerHTML=data.substr(1,data.length-2);
	}})
	})	
</script>

<script>
$.ajax({async:'false',type:'get',url:'LivingRoomFromId?id=1',success:function(data){
			document.getElementById('sushelou1').innerHTML=data.substr(1,data.length-2);	
	}})
	
$.ajax({async:'false',type:'get',url:'LivingRoomFromId?id=2',success:function(data){
			document.getElementById('sushelou2').innerHTML=data.substr(1,data.length-2);	
	}})
	
$.ajax({async:'false',type:'get',url:'LivingRoomGoodLevelFromId?id=1',success:function(data){
			document.getElementById('showinfo1').innerHTML=data.substr(1,data.length-2);	
	}})
	
$.ajax({async:'false',type:'get',url:'LivingRoomGoodLevelFromId?id=2',success:function(data){
			document.getElementById('showinfo2').innerHTML=data.substr(1,data.length-2);	
	}})


	$("#goodbtn1").click(function(){
	$.ajax({async:'false',type:'get',url:'LivingRoomGoodLevelFromId?id=1',success:function(data){
			document.getElementById('showinfo1').innerHTML=data.substr(1,data.length-2);
	}})
	})
	
	$("#midbtn1").click(function(){
	$.ajax({async:'false',type:'get',url:'LivingRoomMidLevelFromId?id=1',success:function(data){
			document.getElementById('showinfo1').innerHTML=data.substr(1,data.length-2);
	}})
	})
	
	$("#badbtn1").click(function(){
	$.ajax({async:'false',type:'get',url:'LivingRoomBadLevelFromId?id=1',success:function(data){
			document.getElementById('showinfo1').innerHTML=data.substr(1,data.length-2);
	}})
	})
	
	
	$("#goodbtn2").click(function(){
	$.ajax({async:'false',type:'get',url:'LivingRoomGoodLevelFromId?id=2',success:function(data){
			document.getElementById('showinfo2').innerHTML=data.substr(1,data.length-2);
	}})
	})
	
	$("#midbtn2").click(function(){
	$.ajax({async:'false',type:'get',url:'LivingRoomMidLevelFromId?id=2',success:function(data){
			document.getElementById('showinfo2').innerHTML=data.substr(1,data.length-2);
	}})
	})
	
	$("#badbtn2").click(function(){
	$.ajax({async:'false',type:'get',url:'LivingRoomBadLevelFromId?id=2',success:function(data){
			document.getElementById('showinfo2').innerHTML=data.substr(1,data.length-2);
	}})
	})
</script>


<%@ include file="tempete/foot.jsp"  %>