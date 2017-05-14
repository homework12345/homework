package com.home.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.home.dao.AuthorDao;
import com.home.dao.BookDao;
import com.home.dao.WriteDao;
import com.home.model.*;
import com.opensymphony.xwork2.ActionSupport;

@Controller @Scope("prototype")
public class WriteAction extends ActionSupport{
	
	 /*业务层对象*/
    @Resource WriteDao writeDao;
    @Resource AuthorDao authorDao;
    @Resource BookDao bookDao;   //注意这些注入的东西
    
    private Write write;
    private Author author;
    private Book book;
    private List<Write> writeList;
    
	public Write getWrite() {
		return write;
	}

	public void setWrite(Write write) {
		this.write = write;
	}
	
	public List<Write> getWriteList() {
		return writeList;
	}

	public void setWriteList(List<Write> writeList) {
		this.writeList = writeList;
	}

	public Author getAuthor() {
		return author;
	}

	public void setAuthor(Author author) {
		this.author = author;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}
	
	/*添加write*/
	public String addWrite() throws Exception{
		System.out.println(author);
		author = authorDao.queryauthorInfo(author.getAuthorname()).get(0);
		
		Write ord =new Write();
		ord.setAuthor(author);
		ord.setBook(book);
		writeDao.addWrite(ord);
		return "write_message";
	}
    /*显示某一write的详细信息*/
    public String showDetail() {
    	System.out.print(write.getWriteid());
    	write = writeDao.getWriteById(write.getWriteid());
        return "detail_view";
    }
    
    /*显示write的修改项*/
    public String showEdit() throws Exception {
    	write = writeDao.getWriteById(write.getWriteid());
        return "edit_view";
    }

    /*编辑write*/
    public String editWrite() throws Exception {
    	writeDao.updateWrite(write);
        return "edit_message";
    }
    
    /*删除write*/
    public String deleteWrite() throws Exception {
    	writeDao.deleteWrite(book.getBookid());
        return "delete_message";
    }
    
    /*查询write*/
    public String queryWrites() throws Exception {
    	writeList = writeDao.QueryWriteInfo(author, book);
        return "show_view";
    }

	/*显示所有write*/
    public String showWrite() {
        //将系统设定为用户名不重复，因此在系统中查询到第一个该名称用户即可
    	System.out.println(author.getAuthorname());
        Author cus= authorDao.queryauthorInfo(author.getAuthorname()).get(0);
        //注意不需要book的查询条件时，下面语句的写法，直接将food的条件置为book
        writeList = writeDao.QueryWriteInfo(cus,null);
        return "show_view";
    }
}
