package com.home.action;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
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
    private Author author;
	private String bookPhotoContentType;
	private String bookPhoto;
	private String bookPhotoFileName;
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
    
	public Author getAuthor() {
		return author;
	}

	public void setAuthor(Author author) {
		this.author = author;
	}
    
	
	/*添加Book*/
	public String addBook() throws Exception{
		String path = ServletActionContext.getServletContext().getRealPath("/images"); 
		System.out.println(path);
        /*处理图片上传*/
        String bookPhotoFileName = ""; 
   	 	if(bookPhoto!= null) {
   	 		InputStream is = new FileInputStream(bookPhoto);
   			String fileContentType = this.getBookPhotoContentType();
   			System.out.println(fileContentType);
   			if(fileContentType.equals("image/jpeg")  || fileContentType.equals("image/pjpeg"))
   				bookPhotoFileName = UUID.randomUUID().toString() +  ".jpg";
   			else if(fileContentType.equals("image/gif"))
   				bookPhotoFileName = UUID.randomUUID().toString() +  ".gif";
   			else if(fileContentType.equals("image/png"))
   				bookPhotoFileName = UUID.randomUUID().toString() +  ".png";

   			File file = new File(path, bookPhotoFileName);
   			OutputStream os = new FileOutputStream(file);
   			byte[] b = new byte[1024];
   			int bs = 0;
   			while ((bs = is.read(b)) > 0) {
   				os.write(b, 0, bs);
   			}
   			is.close();
   			os.close();
   	 	}
        if(bookPhoto != null)
        	book.setPicture("images/" + bookPhotoFileName);
        else
        	book.setPicture("images/car.jpg");
        
		bookDao.addBook(book);
		return "message";
		
	}
	
	
	private String getBookPhotoContentType() {
		// TODO Auto-generated method stub
		return null;
	}

	public void setBookPhotoContentType(String bookPhotoContentType) {
		this.bookPhotoContentType = bookPhotoContentType;
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
