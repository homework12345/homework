package com.book.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Book entity. @author MyEclipse Persistence Tools
 */

public class Book implements java.io.Serializable {

	// Fields

	private Integer bookid;
	private String bookname;
	private String author;
	private String booktype;
	private String bookwenan;
	private String context;
	private Double unitprice;
	private String picture;
	private Set writes = new HashSet(0);
	private Set orders = new HashSet(0);

	// Constructors

	/** default constructor */
	public Book() {
	}

	/** full constructor */
	public Book(String bookname, String author, String booktype,
			String bookwenan, String context, Double unitprice, String picture,
			Set writes, Set orders) {
		this.bookname = bookname;
		this.author = author;
		this.booktype = booktype;
		this.bookwenan = bookwenan;
		this.context = context;
		this.unitprice = unitprice;
		this.picture = picture;
		this.writes = writes;
		this.orders = orders;
	}

	// Property accessors

	public Integer getBookid() {
		return this.bookid;
	}

	public void setBookid(Integer bookid) {
		this.bookid = bookid;
	}

	public String getBookname() {
		return this.bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public String getAuthor() {
		return this.author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getBooktype() {
		return this.booktype;
	}

	public void setBooktype(String booktype) {
		this.booktype = booktype;
	}

	public String getBookwenan() {
		return this.bookwenan;
	}

	public void setBookwenan(String bookwenan) {
		this.bookwenan = bookwenan;
	}

	public String getContext() {
		return this.context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	public Double getUnitprice() {
		return this.unitprice;
	}

	public void setUnitprice(Double unitprice) {
		this.unitprice = unitprice;
	}

	public String getPicture() {
		return this.picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public Set getWrites() {
		return this.writes;
	}

	public void setWrites(Set writes) {
		this.writes = writes;
	}

	public Set getOrders() {
		return this.orders;
	}

	public void setOrders(Set orders) {
		this.orders = orders;
	}

}