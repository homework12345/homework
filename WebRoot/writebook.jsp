<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
  <head>
    <title>作者写书</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
  </head>
  <body>
   <header>
       <div class="logo"></div>
    </header>
    <main>
   <s:form action="book/book_addBook" method="post">
   <s:textfield name="book.bookname" placeholder="小说名称"></s:textfield><br>
   <s:textfield name="book.author" placeholder="作者" value="x" checked="checked"></s:textfield><br>
   <s:textfield name="book.booktype" placeholder="类型"></s:textfield><br>
   <s:textfield name="book.bookwenan" placeholder="文案"></s:textfield><br>
   <s:textfield name="book.context" placeholder="内容"></s:textfield><br>
   <s:textfield name="book.unitprice" placeholder="单价"></s:textfield><br>        
   <s:submit value="提交"></s:submit>
   </s:form>
  </main>
   <br>
  </body>
</html>