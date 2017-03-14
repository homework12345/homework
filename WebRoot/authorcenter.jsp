<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML >
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>漫读网~~作者空间</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">

  </head>
  
  <body>
     <div class="account">
         <!--  <c:choose>
		      <c:when test="${author == null}">
		         <a href="author_reg.jsp">作者注册</a>
		         <a href="author_login.jsp">作者登录</a>
		       </c:when>
		       <c:otherwise> -->
		       <c:out value="${author.authorname}"></c:out>大大, 欢迎您!
		                     登录账号：<c:out value="${author.authorid}"></c:out>
               <!-- </c:otherwise> 
		    </c:choose>--> 
       </div>
       <p><a href="write_show.jsp">我的书架>></a></p>
      <p><a href="#">充值记录>></a></p>
      <p><a href="write_show.jsp">写书记录>></a></p>
      <p><a href="main.jsp">主页>></a></p>
  </body>
</html>
