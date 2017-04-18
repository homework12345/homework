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
    
    <title></title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	
  </head>
  <body>
    <header>
       <div class="logo"></div>
    </header>
    <main>
      <div class="account">
         <c:choose>
		      <c:when test="${author.authorname == null}">
		         <a href="author_reg.jsp">author注册</a>
		         <a href="author_login.jsp">author登录</a>
		         
		       </c:when>
		       <c:otherwise> 
		       <c:out value="${author.authorname}"></c:out>作者, 欢迎您!
		       <a href="authorcenter.jsp?author=${author}">作者空间</a>
           </c:otherwise>
		    </c:choose>
       </div>
        <div class="account">
         <c:choose>
		      <c:when test="${user.username == null}">
		         <a href="user_reg.jsp">user注册</a>
		         <a href="user_login.jsp">user登录</a>
		       </c:when>
		       <c:otherwise> 
		       <c:out value="${user.username}"></c:out>读者, 欢迎您!
		       <a href="usercenter.jsp?user=${user}">用户中心</a>
           </c:otherwise>
		    </c:choose>
       </div>
    <h1>主页</h1>
	    <s:form action="book/book_queryAllBook" method="post">
	      <div>
	         小说名称：<input class="search" type="text" name="keyWords" placeholder="请输入关键词">
	      </div>
	      <s:submit value="查 询" cssClass="search-go"></s:submit>
	      <table>
	        <tr>  
	          <th>序号</th>
	          <th>书名</th>
	           <th>封面</th>  
	          <th>作者</th> 
	          <th>文案</th> 
	          <th>单价</th> 
	          <th>操作</th>  
	          
	        </tr> 
	        <c:forEach var="book" items="${bookList}" varStatus="status">
	          <tr>
	            <td><c:out value="${status.index+1}"></c:out></td>
	            <td><a href="book/book_showDetail?book.bookid=${book.bookid}&user.username=${user.username}">
	            <c:out value="${book.bookname}"></c:out></a></td>
	             <td><img src="<%=basePath%><c:out value="${book.picture}"/>"></td>
	             <td><c:out value="${book.author}"></c:out></td>
	             <td><c:out value="${book.bookwenan}"></c:out></td>
	            <td><c:out value="${book.unitprice}"></c:out></td>
	            <td><a href="order/order_addOrder?book.bookid=${book.bookid}&user.username=${user.username}&order.orderid=${order.orderid}">
	                                加入书架</a></td>
	          </tr>
	        </c:forEach>
	      </table>
	    </s:form>
	</main>
  </body>
</html>
