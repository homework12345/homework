<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
<!DOCTYPE html><!--html5的定义,如果不这么定义编辑器格式会有问题  -->
<html>  
<head>  
  <span style="color:#3366FF;"><script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>  
  <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">  
  <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>  
  <link href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">  
  <link rel="stylesheet" href="http://cdn.bootcss.com/summernote/0.5.1/summernote.css" />  
  <script src="http://cdn.bootcss.com/summernote/0.5.1/summernote.min.js"></script></span>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<title>Insert title here</title>  
</head>  
<body>  
    <span style="color:#CC6600;"><div class="container">  
        <div id="summernote">Hello summernote</div>  
    </div>  
    <script></span>  
<span style="color:#990000;">$(document).ready(function() {  
  $('#summernote').summernote({  
      height:300,  
      focus:true,  
      maxHeight:null,  
      minHeight:null,  
  });  
});</span>  
</script>  
</body>  
</html>  