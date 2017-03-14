<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
  <head>
    <title>加入书架</title>
  </head>
  <body>
   <s:form action="book/book_addBook" method="post">
   <s:textfield name="book.bookname" label="小说名称"></s:textfield>
   <s:textfield name="book.author" label="作者"></s:textfield>
   <s:textfield name="book.booktype" label="类型"></s:textfield>
   <s:textfield name="book.bookwenan" label="文案"></s:textfield>
   <s:textfield name="book.context" label="内容"></s:textfield>
   <s:textfield name="book.unitprice" label="单价"></s:textfield>
   <s:submit value="提交"></s:submit>
   </s:form>
   <br>
  </body>
</html>
