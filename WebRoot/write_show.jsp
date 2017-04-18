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
    
    <title>漫读网~~我的写书</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<!--<script type="text/javascript">
     var msg=prompt('确认删除？','');
     url="delete.jsp?isDelete="+ confirm(msg);
	</script>
	-->
  </head>
  
  <body>
    <header>
       <div class="account">
         <c:choose>
		       <c:when test="${author.authorname ==null}">
		         <a href="author_reg.jsp">注册</a>
		         <a href="author_login.jsp">登录</a>
		       </c:when>
		       <c:otherwise>
		         <c:out value="${author.authorname}"></c:out>大大, 欢迎您!
		       </c:otherwise>
		  </c:choose>
       </div>
       <div class="logo"></div>
		    
    </header>
    
    <main>
	    <s:form action="write/write_queryWrites" method="post">
	      
	      <div>
	         <s:submit value="查 询" cssClass="search-go"></s:submit>
	         <input class="search" type="text" name="book.bookname" placeholder="请输入小说书名或关键字">
	      </div>
	      <h3>我的作品</h3>
	      <table>
	        <tr>  
	          <th>序号</th>  
	          <th>writeid</th>
	          <th>书名</th>
	          <th>书的单价</th> 
	          <th>操作</th>  
	          <th>操作</th>
	        </tr> 
	         <s:iterator value="writeList" status="status">
	          <tr>
	            <td><s:property value="#status.index+1"></s:property></td>
	            <td><s:a href="write/write_showDetail?write.writeid=%{writeid}">
	               <s:property value="writeid"></s:property></s:a>
	            </td>
	            <td>
	            <s:hidden value="book.bookid"></s:hidden>
	            <s:property value="book.bookname"></s:property></td>
	            <td><s:property value="book.unitprice"></s:property></td>
	             <td><a href="book/book_showEdit?book.bookid=${book.bookid}">编辑</a></td>
	            <td>
	            <a href="book/book_deleteBook?book.bookid=${book.bookid}" onclick="return confirm('确认删除？');">删除</a>  
	            </td>
	          </tr>
	         </s:iterator>
	      </table>
	    </s:form>
	</main>
	<a href="writebook.jsp">写书</a>
  </body>
</html>
