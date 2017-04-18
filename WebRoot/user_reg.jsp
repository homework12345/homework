<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>读者注册页面</title>
	<meta name="keywords" content="盒老师">
	<meta name="content" content="盒老师">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <link type="text/css" rel="stylesheet" href="css/login.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>

</head>
<body class="login_bj" >

<div class="zhuce_body">
	<div class="logo"><a href="#"><img src="images/logo.png" width="114" height="54" border="0"></a></div>
    <div class="zhuce_kong">
    	<div class="zc">
        	<div class="bj_bai">
            <h3>欢迎注册</h3>
       	  	   <s:form action="user/user_reg" method="post">
						<s:textfield name="user.username" placeholder="帐号" cssClass="kuang_txt phone"></s:textfield>
						<s:password name="user.password" placeholder="密码" cssClass="kuang_txt possword"></s:password>
						<s:textfield name="user.address" placeholder="地址" cssClass="kuang_txt phone"></s:textfield>
                        <s:textfield name="yanzheng" placeholder="验证码" cssClass="kuang_txt yanzm"></s:textfield>
                        <s:submit value="注册" cssClass="btn_zhuce"></s:submit>
					</s:form>
                <div>
                	<div class="hui_kuang"><img src="images/zc_22.jpg" width="92" height="31"></div>
                	<div class="shuaxin"><a href="#"><img src="images/zc_25.jpg" width="13" height="14"></a></div>
                </div>
                <div>
               		<input name="checkbox" type="checkbox" value=""><span>已阅读并同意<a href="#" target="_blank"><span class="lan">《XXXXX使用协议》</span></a></span>
                </div>
                
              
            </div>
        	<div class="bj_right">
            	<p>使用以下账号直接登录</p>
                <a href="#" class="zhuce_qq">QQ注册</a>
                <a href="#" class="zhuce_wb">微博注册</a>
                <a href="#" class="zhuce_wx">微信注册</a>
                <p>已有账号？<a href="login.jsp">立即登录</a></p>
                <p>想成为作者？<a href="author_reg.jsp">立即注册</a></p>
                
            </div>
        </div>
    </div>
</div>
<div style="text-align:center;">
<h2>来源:<a href="main.jsp" target="_blank">漫读网</a></h2>
</div>

</body>
</html>