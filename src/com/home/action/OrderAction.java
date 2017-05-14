package com.home.action;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.home.model.User;
import com.home.model.Order;
import com.home.dao.UserDao;
import com.home.dao.BookDao;
import com.home.dao.OrderDao;
import com.home.model.*;
import com.opensymphony.xwork2.ActionSupport;

@Controller @Scope("prototype")
public class OrderAction extends ActionSupport{
	
	 /*业务层对象*/
    @Resource OrderDao orderDao;
    @Resource UserDao userDao;
    @Resource BookDao bookDao;   //注意这些注入的东西
    
    private Order order;
    private List<Order> orderList;
    private User user;
    private Book book;
    
	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}
	
	public List<Order> getOrderList() {
		return orderList;
	}

	public void setOrderList(List<Order> orderList) {
		this.orderList = orderList;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}
	
	/*添加Order*/
	public String addOrder() throws Exception{
		user = userDao.QueryUserInfo(user.getUsername()).get(0);
		Order ord =new Order();
		ord.setUser(user);
		ord.setBook(book);
		orderDao.addOrder(ord);
		return "order_message";
	}
	
	/*显示所有Order*/
    public String showOrder() {
        //将系统设定为用户名不重复，因此在系统中查询到第一个该名称用户即可
    	System.out.println(user.getUsername());
        User cus= userDao.QueryUserInfo(user.getUsername()).get(0);
        //注意不需要book的查询条件时，下面语句的写法，直接将food的条件置为book
        orderList = orderDao.queryOrderInfo(cus,null);
        return "show_view";
    }
    /*显示某一Order的详细信息*/
    public String showDetail() {
    	System.out.print(order.getOrderid());
    	order = orderDao.getOrderById(order.getOrderid());
        return "detail_view";
    }
    
   
    /*查询Order*/
    public String queryOrders() throws Exception {
    	orderList = orderDao.queryOrderInfo(user,book);
        return "show_view";
    }
}
