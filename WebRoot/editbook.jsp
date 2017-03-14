<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'edit.jsp' starting page</title>
    
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
  <p align=center>
    <s:form action="book/book_editBook"> 
   小说名称<s:textfield name="book.bookname" placeholder="小说名称"></s:textfield><br>
  作者 <s:textfield name="book.author" placeholder="作者"></s:textfield><br>
类型   <s:textfield name="book.booktype" placeholder="类型"></s:textfield><br><br>
文案   <s:textfield name="book.bookwenan" placeholder="文案"></s:textfield><br><br>
   <s:textfield name="book.context" placeholder="内容"></s:textfield><br>
   <s:textfield name="book.unitprice" placeholder="单价"></s:textfield><br><br><br>
     <s:hidden name="book.bookid" id="bookid"></s:hidden>
     <s:submit value="保存"></s:submit>
    </s:form>
    </p>
  </body>
</html>
