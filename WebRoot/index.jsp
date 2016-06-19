<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"   pageEncoding="utf-8"%>
<%@page import="action.weather"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ include file="tempete/head.jsp"  %>
<div style="width:100%;height:220px;" >
&nbsp; <!-- Blank Block menu -->
</div>
<div id="page-wrap" style="margin-top:-20px;z-index:-100;position: relative">
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
			style="position: absolute; width: 280px; height: 170px; right: 50px; top: 110px; padding: 10px;"
			class="ui-widget ui-widget-content ui-corner-all">
			<div class="ui-dialog-content ui-widget-content"
				style="background: none; border: 0;">
				<span class="ui-icon ui-icon-info"
					style="float: left; margin-right: .3em;"></span>
				<ol style="background-color: #DC143C; border-radius: 3px;">
					&nbsp;
					<a style="color: white">公告1</a>
				</ol>
				<span class="ui-icon ui-icon-info"
					style="float: left; margin-right: .3em;"></span>
				<ol style="background-color: #DC143C; border-radius: 3px;">
					&nbsp;
					<a style="color: white">公告2</a>
				</ol>

				<span class="ui-icon ui-icon-info"
					style="float: left; margin-right: .3em;"></span>
				<ol style="background-color: #DC143C; border-radius: 3px;">
					&nbsp;
					<a style="color: white">公告3</a>
				</ol>

				<span class="ui-icon ui-icon-info"
					style="float: left; margin-right: .3em;"></span>
				<ol style="background-color: #DC143C; border-radius: 3px;">
					&nbsp;
					<a style="color: white">公告4</a>
				</ol>

				<span class="ui-icon ui-icon-info"
					style="float: left; margin-right: .3em;"></span>
				<ol style="background-color: #DC143C; border-radius: 3px;">
					&nbsp;
					<a style="color: white">公告5</a>
				</ol>
				<button class="ui-button-success"
					style="float: right; border-radius: 3px;">
					更多公告
				</button>

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
                    <p> 宿舍楼1</p>
                  </div></center>
<center><div style="width:200px; margin-top:-8px;">
	<button class="ui-button-success" style="width:60px;border-radius:5px;">优秀</button>
	<button class="ui-button-primary" style="width:60px;border-radius:5px;">中等</button>
	<button class="ui-button-error" style="width:60px;border-radius:5px;">较差</button>
</div></center>


		<div
			style="position: absolute; width: 180px; height: 115px; left: 10px; top: 92px; padding: 10px;border-width:0px;"
			class="ui-widget ui-widget-content ui-corner-all" id="showinfo1">
			显示信息1
		</div>

                </div>
	
		</div>


		<div
			style="position: absolute; width: 200px; height: 220px; right: 20px; top: 60px; padding: 10px;"
			class="ui-widget ui-widget-content ui-corner-all">
			
               <div class="ui-widget">
                  <center><div class="ui-state-highlight ui-corner-all" style="margin-top:2px; width:50%;">
                    <p> 宿舍楼2</p>
                  </div></center>
                  
<center><div style="width:200px; margin-top:-8px;">
	<button class="ui-button-success" style="width:60px;border-radius:5px;">优秀</button>
	<button class="ui-button-primary" style="width:60px;border-radius:5px;">中等</button>
	<button class="ui-button-error" style="width:60px;border-radius:5px;">较差</button>
</div></center>
 
 		<div
			style="position: absolute; width: 180px; height: 115px; left: 10px; top: 92px; padding: 10px; border-width:0px;"
			class="ui-widget ui-widget-content ui-corner-all" id="showinfo1">
			显示信息2
		</div>
 
 
                </div>

		</div>

		</div>
		
              
      
                
		
	</div>
</div>

<%@ include file="tempete/foot.jsp"  %>