<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'message.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <p><img src="<%=basePath%><c:out value="${book.picture}"/>"></p>
   <p>小说名称：<c:out value="${book.bookname}"></c:out></p>
   <p>作者：<c:out value="${book.author}"></c:out></p>
   <p>分类：<c:out value="${book.booktype}"></c:out></p>
   <p>文案：<c:out value="${book.bookwenan}"></c:out></p>
   <p>正文：（加入书架后可以看）<a href="order/order_addOrder?book.bookid=${book.bookid}&user.username=${user.username}">点此加入书架</a></p>
   <p>单价：<c:out value="${book.unitprice}"></c:out></p>
   <c:choose>
	<c:when test="${user.username == null}">
       想看全文？请先<a href="user_login.jsp">登录</a>！
       </c:when>
    </c:choose>
  </body>
</html>
