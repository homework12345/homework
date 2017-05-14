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
    <meta http-equiv="content-type" content="text/html;charset=utf-8"/>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link type="text/css" rel="stylesheet" href="css/detail.css">
    
  </head>
  
  <body>
  <div class="container">
<aside>
  <img src="<%=basePath%><c:out value="${book.picture}"></c:out>"></img>
  </aside>
  
  <section>
<div class="book-info">
	<h1><em>小说名称：<c:out value="${book.bookname}"></c:out></em><a class="writer default" target="_blank"><c:out value="${book.author}">
	</c:out> 著</a></h1>
    <p class="tag-box">
       <span class="tag"> 分类：<c:out value="${book.booktype}"></c:out></span>
       </p>
       <p class="price">
         <span>单价：<c:out value="${book.unitprice}"></c:out></span><em>元</em>
         </p>
       <p class="intro">文案：<c:out value="${book.bookwenan}"></c:out></p>
       <p class="btn">正文：（加入书架后可以看）<a href="order/order_addOrder?book.bookid=${book.bookid}&user.username=${user.username}">点此加入书架</a>
       </p>
        <c:choose>
	<c:when test="${user.username == null}">
       想看全文？请先<a href="user_login.jsp">登录</a>！
       </c:when>
    </c:choose>
       </div>
</section>
</div>			
  </body>
</html>
