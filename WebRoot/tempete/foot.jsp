<%@ page pageEncoding="utf-8"%>
<script src=tempete/js/zepto.min.js></script>
<script>
   function loginPost(){
   $.ajax({
            //提交数据的类型 POST GET
            type:"POST",
            //提交的网址
            url:"LoginCheck",
            //提交的数据
            data:{username:document.getElementById("username").value,password:document.getElementById("password").value},
            //返回数据的格式
            datatype: "json",//"xml", "html", "script", "json", "jsonp", "text".
            //在请求之前调用的函数
           // beforeSend:function(){$("#msg").html("logining");},
            //成功返回之后调用的函数             
            success:function(data){
            	if(data.indexOf("success")!=-1)
            	{
            	  //  alert("登录成功");
           			location.href = "manage.jsp";
            	}
           		else
           			alert("登录失败");            
            }   ,
            //调用执行后调用的函数
            complete: function(XMLHttpRequest, textStatus){
            //   alert(XMLHttpRequest.responseText);
            //   alert(textStatus);
                //HideLoading();
            },
            //调用出错执行的函数
            error: function(){
                //请求出错处理
            }         
         });

  }
  
  $("#loginBtn").click(function(){
  loginPost();
});
</script>
</body>

</html>
