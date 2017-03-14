<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>所有Book</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	
  </head>
  
  <body>
    <header>
       <div class="account">
         <c:choose>
		       <c:when test="${user.username == null}">
		         <a href="user_reg.jsp">注册</a>
		         <a href="user_login.jsp">登录</a>
		       </c:when>
		       <c:otherwise>
		         <c:out value="${user.username}"></c:out>, 欢迎您!
		       </c:otherwise>
		    </c:choose>
       </div>
       <div class="logo"></div>
		    
    </header>
    <main>
	    <s:form action="book/book_queryAllBook" method="post">
	      
	      <div>
	         <s:submit value="查 询" cssClass="search-go"></s:submit>
	         小说名称：<input class="search" type="text" name="keyWords" placeholder="请输入关键词">
	      </div>
	
	      <table>
	        <tr>  
	          <th>序号</th>  
	          <th>封面</th>
	          <th>名称</th>
	          <th>作者</th> 
	          <th>文案</th> 
	          <th>单价</th>
	          <th>操作</th> 
	        </tr> 
	        <c:forEach var="book" items="${bookList}" varStatus="status">
	          <tr>
	            <td><c:out value="${status.index+1}"></c:out></td>
	            <td><a href="book/book_showDetail?book.bookid=${book.bookid}"><c:out value="${book.bookname}"></c:out></a></td>
	             <td><img src="<c:out value="${book.picture}"></c:out>"></img></td>
	             <td><c:out value="${book.author}"></c:out></td>
	             <td><c:out value="${book.bookwenan}"></c:out></td>
	            <td><c:out value="${book.unitprice}"></c:out></td>
	            <td><a href="book/book_showEdit?book.bookid=${book.bookid}">编辑</a></td>
	            <td><a href="book/book_deleteBook?book.bookid=${book.bookid}">删除</a></td>
	            <td><a href="order/order_addOrder?book.bookid=${book.bookid}&user.username=${user.username}">来一份</a></td>
	          </tr>
	        </c:forEach>
	      </table>
	    </s:form>
	</main>
  </body>
</html>
