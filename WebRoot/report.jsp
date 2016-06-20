<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"   pageEncoding="utf-8"%>
<%@ include file="tempete/head.jsp"  %>
<div style="width:100%;height:220px;" >
&nbsp; <!-- Blank Block menu -->
</div>
<div id="page-wrap" style="margin-top:0px;position: relative">
<div id="formpanel" class="layout" style="height:380px;" >
<center>
      <div class="span3" style="width:90%;"><br /><br />
      <form action="addReportInfo" method="post"  name="report">
         宿舍楼： <select value="选择宿舍楼号" id="sushelouId" class="span3" tabindex="1" name="sushelou">
            <option value="13栋">13栋</option>
            <option value="14栋">14栋</option>
          </select>
         宿舍号： <select  value="选择宿舍号" id="roomId" class="span3" tabindex="1" name="susheId">
            <option value="112">112</option>
            <option value="113">113</option>
            <option value="212">212</option>
            <option value="213">213</option>
            <option value="312">312</option>
            <option value="313">313</option>
            <option value="412">412</option>
            <option value="413">413</option>
          </select>   
          <br /><br />
         报修详情： <textarea  id="infoReport" class="span3" style="width:500px;height:180px;" name="reportinfo"></textarea>     
         <input type="button" id="sendbtn" class="btn btn-large btn-block btn-danger" style="width:250px;" value="报修" />
       </form>
       
        </div>
</center>
</div>
</div>


<center><div id="addok" style="margin-top:40px;position: relative;width:130px;height:120px;display:none;">
<div class="layout" style="width:200px;height:120px;" >
<a href="index.jsp"><img src="tempete/img/ok.png" /></a>
</div>
</div></center>
<script>
 function sendPost(){
   $.ajax({
            //提交数据的类型 POST GET
            type:"POST",
            //提交的网址
            url:"addReportInfo",
            //提交的数据
            data:{sushelou:document.getElementById("sushelouId").value,susheId:document.getElementById("roomId").value,reportinfo:document.getElementById("infoReport").value},
            //返回数据的格式
            datatype: "json",//"xml", "html", "script", "json", "jsonp", "text".
            //在请求之前调用的函数
          //  beforeSend:function(){$("#msg").html("logining");},
            //成功返回之后调用的函数             
            success:function(data){
           		//if(data.substr(1,data.length()-2)=="success")
           		$("#formpanel").fadeOut("slow");
           		$("#addok").fadeIn("slow");         
            }   ,
            //调用执行后调用的函数
            complete: function(XMLHttpRequest, textStatus){
               //alert(XMLHttpRequest.responseText);
           //    alert(textStatus);
                //HideLoading();
            },
            //调用出错执行的函数
            error: function(){
                //请求出错处理
            }         
         });

  }
$("#sendbtn").click(function(){
  sendPost();
});
</script>

<script>
	document.getElementById("username").style.height="20px";
	document.getElementById("password").style.height="20px";
</script>
<%@ include file="tempete/foot.jsp"  %>