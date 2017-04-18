<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>显示write详情</title>
    <meta charset="utf-8">
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
     <p>订单号：<s:property value="write.writeid"></s:property></p>
     <p>写手：<s:property value="write.author.authorname"></s:property></p>
     <p>小说：<s:property value="write.book.bookname"></s:property></p>
     <p>分类：<s:property value="write.book.booktype"></s:property></p>
   <p>文案：<s:property value="write.book.wenan"></s:property></p>
   <p>单价：<s:property value="write.book.unitprice"></s:property></p>
  </body>
</html>
   

