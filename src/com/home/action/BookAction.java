package com.home.action;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.home.dao.AuthorDao;
import com.home.dao.BookDao;
import com.home.model.*;
import com.opensymphony.xwork2.ActionSupport;

@Controller @Scope("prototype")
public class BookAction extends ActionSupport{
	
	 /*业务层对象*/
    @Resource BookDao bookDao;
    @Resource AuthorDao authorDao;
    
    
    private Book book;

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}
	
	private List<Book> bookList;
	
	public List<Book> getBookList() {
		return bookList;
	}

	public void setBookList(List<Book> bookList) {
		this.bookList = bookList;
	}
	
	private String keyWords;
	
	public String getKeyWords() {
		return keyWords;
	}

	public void setKeyWords(String keyWords) {
		this.keyWords = keyWords;
	}
	
	private User user;
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
    private Author author;
    
	public Author getAuthor() {
		return author;
	}

	public void setAuthor(Author author) {
		this.author = author;
	}
    
	/*添加book*/
	public String addBook() throws Exception{
		System.out.println(book.getBookname());
		bookDao.addBook(book);
		return "message";
	}
	
	/*显示所有Book*/
    public String showBook() {
        bookList = bookDao.queryAllBook();
        return "show_view";
    }

    /*显示某一Book的详细信息*/
    public String showDetail() {
    	book = bookDao.getBookById(book.getBookid());
        return "detail_view";
    }
    
    /*显示food的修改项*/
    public String showEdit() throws Exception {
    	book = bookDao.getBookById(book.getBookid());
        return "edit_view";
    }

    /*编辑food*/
    public String editBook() throws Exception {
    	bookDao.updateBook(book);
        return "edit_message";
    }
    
    /*删除Book*/
    public String deleteBook() throws Exception {
    	bookDao.deleteBook(book.getBookid());
        return "delete_message";
    }
    
    /*查询Book*/
    public String queryAllBook() throws Exception {
    	bookList = bookDao.queryBookInfo(keyWords);
        return "show_view";
    }
}
