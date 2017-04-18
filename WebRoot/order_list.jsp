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
    
    <title>漫读网,宁静淡泊的阅读世界~~我的书架</title>
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
		       <c:when test="${user.username ==null}">
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
	    <s:form action="order/order_queryOrders" method="post">
	     
	      <div>
	         <s:submit value="查 询" cssClass="search-go"></s:submit>
	         <input class="search" type="text" name="book.bookname" placeholder="请输入小说书名或关键字">
	      </div>
	    
	      <h3>我的书架</h3>
	      <table>
	        <tr>  
	          <th>序号</th> 
	          <th>书名</th>
	          <th>作者</th> 
	          <th>价格</th>
	          <th>显示</th>
	        </tr> 
	         <s:iterator value="orderList" status="status">
	          <tr>
	            <td><s:property value="#status.index+1"></s:property></td>
	            <td> <s:property value="book.bookname"></s:property></td>
	            <td><s:property value="book.author"></s:property></td>
	            <td><s:property value="book.unitprice"></s:property></td>
	            <td><<s:a href="order/order_showDetail?order.orderid=%{orderid}">阅读</s:a></td>
	          </tr>
	         </s:iterator>
	      </table>
	    </s:form>
	</main>
  </body>
</html>
