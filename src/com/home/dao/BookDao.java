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

@Service@Transactional
public class BookDao {
	@Resource SessionFactory factory;
	 public void addBook(Book book) throws Exception {
	    	Session s = factory.getCurrentSession();
	    	s.save(book);
	    }
	 public void deleteBook (Integer  bookid) throws Exception {
	        Session s = factory.getCurrentSession(); 
	        Book book = (Book)s.load(Book.class, bookid);
	        s.delete(book);
	    }
	 public void updateBook(Book book) throws Exception {
	        Session s = factory.getCurrentSession();
	        s.update(book);
	    }
	 public Book getBookById(Integer  bookid) {
	        Session s = factory.getCurrentSession();
	        Book book = (Book)s.get(Book.class, bookid);
	        return book;
	    }
	 @Transactional(propagation=Propagation.NOT_SUPPORTED)
	 public ArrayList<Book> queryAllBook() {
	        Session s = factory.getCurrentSession();
	        String hql = "From Book";
	        Query q = s.createQuery(hql);
	        List bookList = q.list();
	        return (ArrayList<Book>) bookList;
	    }
	 @Transactional(propagation=Propagation.NOT_SUPPORTED)
	 public ArrayList<Book> queryBookInfo(String bookName) { 
	    	Session s = factory.getCurrentSession();
	    	String hql = "From Book book where 1=1";
	    	if(!bookName.equals("")) hql = hql + " and book.bookname like '%" + bookName + "%'";
	        Query q = s.createQuery(hql);
	    	List bookList = q.list();
	    	return (ArrayList<Book>) bookList;
	    }
}