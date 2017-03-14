package com.home.util;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.home.model.User;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginInterceptors extends AbstractInterceptor{

	 
	   private static final long serialVersionUID = 1L;

	   private String sessionName; //用来传递当前用户的信息

	   private String excludeName; //例外的action，也就是凡是例外的action就不需要拦截

	   private List <String> list;

	   /*
	    * 因为在配置文件的参数excludeName中，例外的action可能是若干个，中间用逗号间隔，所以在取值时要把excludeName分解成单独的
	   一个个action的名字，放在一个list中，strlsit方法用来分解这些action的名字
	                 假如逗号前后有空格，则使用trim()方法去除这些空格
	   */
	   public List<String>  strlsit(String str){

	     String[] s = str.split(",");//分割

	     List <String> list = new ArrayList <String>();

	     for(String ss : s){

	        list.add(ss.trim());//trim:去空格,加到list里面

	     }
	     
	     return list;

	   }

	   @Override

	   public void init() {

	      list = strlsit(excludeName);

	   }

	   @Override

	   public String intercept(ActionInvocation invocation) throws Exception {

	     
		 System.out.println("--------进入拦截器--------");  //此语句可以用来验证是否能进入intercept方法
		 String actionName = invocation.getProxy().getActionName();   //得到跳转的action的名字<指LoginAction中的login()方法叫login(action)>
		 Map <String,Object>  session = invocation.getInvocationContext().getSession();  //得到当前session

	     if(list.contains(actionName)){   //如果请求合法，也就是进登录或注册的action，则不拦截
	        
	    	System.out.println(actionName + "没有被拦截");
	        return invocation.invoke();     //就是通知struts2继续处理以后的事儿，也就是不加拦截器时该执行的那个action

	     }else {   //如果请求不合法，也就是需要被拦截

	        //查看session
	    	System.out.println(actionName + "被拦截了");

	        
	        //得到当前用户（当前用户在login方法中已经被放入session中，见UserAction中的login方法）
	        User user = (User) session.get(sessionName);   
	        
	           if(user==null){   //如果user不存在，就说明登录不成功，还转回login
	        	     // 获取HttpServletRequest对象  
	                 HttpServletRequest req = ServletActionContext.getRequest();  

	                 // 获取此请求的地址 ，也就是获取拦截前要跳转的地址，进行跳转
	                 String path = req.getRequestURI().replaceAll("/homework", "");//改：homeproject
	                 System.out.println("path:" + path);
	        
	                 // 存入session，这个参数在struts.xml中会作为参数出现  
	                 session.put("prePage", path);  
	        	     return "login";
	           }
	           else {                //如果user存在，则登录成功
	        	
	                 return invocation.invoke();    //通知struts2跳转到action中

	          }

	     }

	   }

	   public String getSessionName() {

	     return sessionName;

	   }

	   public void setSessionName(String sessionName) {

	     this.sessionName = sessionName;

	   }

	   public String getExcludeName() {

	     return excludeName;

	   }

	   public void setExcludeName(String excludeName) {

	     this.excludeName = excludeName;

	   }

	   public List<String> getList() {

	     return list;

	   }

	   public void setList(List<String> list) {

	     this.list = list;

	   }


	}
