<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="Refresh" content="3;url=book/book_showBook">
    <title>My JSP 'index.jsp' starting page</title>
	
  </head>
  
  <body>
    成功添加书籍！ <br>
  </body>
</html>
