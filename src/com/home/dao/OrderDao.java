package com.home.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.home.model.User;
import com.home.model.Book;
import com.home.model.Order;

@Service@Transactional
public class OrderDao {
	@Resource SessionFactory factory;
	
	 public void addOrder(Order order) throws Exception {
	    	Session s = factory.getCurrentSession();
	    	s.save(order);
	    }
	 public void deleteOrder (Integer  orderid) throws Exception {
	        Session s = factory.getCurrentSession(); 
	        Order order = (Order)s.load(Order.class, orderid);
	        s.delete(order);
	    }
	 public void updateOrder(Order order) throws Exception {
	        Session s = factory.getCurrentSession();
	        s.update(order);
	    }
	 public ArrayList<Order> queryAllOrder() {
	        Session s = factory.getCurrentSession();
	        String hql = "From Order";
	        Query q = s.createQuery(hql);
	        List orderList = q.list();
	        return (ArrayList<Order>) orderList;
	    }
	 public Order getOrderById(Integer  orderid) {
	        Session s = factory.getCurrentSession();
	        Order order = (Order)s.get(Order.class, orderid);
	        return order;
	    }
	 @Transactional(propagation=Propagation.NOT_SUPPORTED)
	 public ArrayList<Order> queryOrderInfo(User user, Book book) {
	    	Session s = factory.getCurrentSession();
	    	String hql = "From Order order where 1=1";
	    	if(null != user && user.getUserid()!=0) 
	    		hql = hql + " and order.user.userid = '" + user.getUserid() + "'";
	    	if(null != book && null!=book.getBookname()) 
	    		hql = hql + " and order.book.bookname like '%" + book.getBookname() + "%'";
	    	Query q = s.createQuery(hql);
	    	List orderList = q.list();
	    	return (ArrayList<Order>) orderList;
	    }
	
}
