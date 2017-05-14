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
    
    <title>作者写书</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-fileupload.js"></script>
	
	<link rel="shortcut icon" href="<%=basePath%>images/logo.png">
	
  </head>
  
  <body>
    <header>
    <div class="head">
       <div class="logo"><i class="fa fa-ul fa-cutlery"></i> 添加书籍</div>
       <div class="block yh f13">
         <p class="tright">
				<c:choose>
					<c:when test="${author.authorname == null}">
						<a href="author_reg.jsp" cssClass="pl10 pr10">author注册</a>|
		                <a href="author_login.jsp" cssClass="pl10 pr10">author登录</a>
					</c:when>
					<c:otherwise>
						<c:out value="${author.authorname}"></c:out>作者, 欢迎您! 
		                <a href="write/write_showWrite?author.authorname=${author.authorname}">-->作者空间</a>|
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${user.username == null}">
						<a href="user_reg.jsp"  class="pl10 pr10">user注册</a>|
						<a href="user_login.jsp"  class="pl10 pr10">user登录</a>
					</c:when>
					<c:otherwise>|
						<c:out value="${user.username}"></c:out>读者, 欢迎您! 
		               <a href="order/order_showOrder?user.username=${user.username}">用户中心</a>
					</c:otherwise>
				</c:choose>
			</p>
       </div>
     </div>
		    
    </header>

     <main class="container-fluid">
	    <div class="row">
		   <div class="col-md-10">
		      <s:form action="book/book_addBook" cssClass="form-horizontal" method="post">
		       <div class="panel panel-success">
			       <div class="panel-heading">
		               <h4 class="panel-title"> <i class="fa fa-cutlery"></i> 添 加 书 籍</h4>
		           </div>
		           <div class="panel-body">
				       <div class="form-group">
			                <label class="control-label col-md-3">书籍名称</label>
			                <div class="col-md-2">
                              <input type="text" name="book.bookname" class="form-control input-sm" required>
                           </div>
			           </div>  
			           <div class="form-group">
			                <label class="control-label col-md-3">书籍类型</label>
			                <div class="col-md-2">
                              <input type="text" name="book.booktype" class="form-control input-sm" placeholder="&yen;" required>
                            </div>
			           </div>
			           <div class="form-group">
			                <label class="control-label col-md-3">书籍作者</label>
			                <div class="col-md-2">
                              <input type="text" name="book.author" class="form-control input-sm" placeholder="&yen;" required>
                            </div>
			           </div>
			           <div class="form-group">
			                <label class="control-label col-md-3">书籍单价</label>
			                <div class="col-md-2">
                              <input type="text" name="book.unitprice" class="form-control input-sm" placeholder="&yen;" required>
                            </div>
			           </div>
			           <div class="form-group">
			                <label class="control-label col-md-3">书籍内容</label>
			                <div class="col-md-2">
                              <input type="text" name="book.context" class="form-control input-sm" placeholder="&yen;" required>
                            </div>
			           </div>
			            <div class="form-group">
			                <label class="control-label col-md-3">书籍文案</label>
			                <div class="col-md-2">
                              <input type="text" name="book.bookwenan" class="form-control input-sm" placeholder="&yen;" required>
                            </div>
			           </div>
			           <div class="form-group">
			                <label class="control-label col-md-3">书籍图片</label>
			                <div class="col-md-4">
                              <div class="fileupload fileupload-new" data-provides="fileupload">
                                <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                                   <img src="<%=basePath%>images/1.jpg" alt="" />
                                </div>
                                <div class="fileupload-preview fileupload-exists thumbnail" 
                                   style="max-width: 200px; max-height:150px; line-height: 20px;">
                                </div>
                                <div>
                                   <span class="btn btn-file btn-primary"><span class="fileupload-new">浏览</span>
                                   <span class="fileupload-exists">浏览</span><input type="file" name="bookPhoto"/></span>
                                   <a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload">取消</a>
                                </div>
                              </div>
                            </div>
			           </div>
			           <div class="form-group col-md-3">
				          <button type="submit" class="btn btn-success pull-right">提  交 </button>
				       </div>
				       
				   </div>
				</div>
		    </s:form>
		  </div>
	   </div>
	</main>
	<script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
	<script src="<%=basePath%>js/bootstrap-fileupload.js"></script>
  </body>
</html>
