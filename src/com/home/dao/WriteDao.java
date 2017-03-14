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


import com.home.model.Book;
import com.home.model.Author;
import com.home.model.Write;

@Service@Transactional
public class WriteDao {
	@Resource SessionFactory factory;
	 public void addWrite(Write write) throws Exception {
	    	Session s = factory.getCurrentSession();
	    	s.save(write);
	    }
	 public void deleteWrite (Integer  writeid) throws Exception {
	        Session s = factory.getCurrentSession(); 
	        Write write = (Write)s.load(Write.class, writeid);
	        s.delete(write);
	    }
	 public void updateWrite(Write write) throws Exception {
	        Session s = factory.getCurrentSession();
	        s.update(write);
	    }
	 public ArrayList<Write> queryAllWrite() {
	        Session s = factory.getCurrentSession();
	        String hql = "From Write";
	        Query q = s.createQuery(hql);
	        List writeList = q.list();
	        return (ArrayList<Write>) writeList;
	    }
	 public Write getWriteById(Integer  writeid) {
	        Session s = factory.getCurrentSession();
	        Write write = (Write)s.get(Write.class, writeid);
	        return write;
	    }
	 @Transactional(propagation=Propagation.NOT_SUPPORTED)
	 public ArrayList<Write> QueryWriteInfo(Author author, Book book) {
	    	Session s = factory.getCurrentSession();
	    	String hql = "From Write write where 1=1";
	    	if(null != author && author.getAuthorid()!=0) 
	    		hql = hql + " and write.author.authorid ='" + author.getAuthorid() + "'";
	    	if(null != book && null!=book.getBookname()) 
	    		hql = hql + " and write.book.bookname like '%" + book.getBookname() + "%'";
	    	Query q = s.createQuery(hql);
	    	List writeList = q.list();
	    	return (ArrayList<Write>) writeList;
	} 
}

