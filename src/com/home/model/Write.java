package com.home.model;

/**
 * Write entity. @author MyEclipse Persistence Tools
 */

public class Write implements java.io.Serializable {

	// Fields

	private Integer writeid;
	private Author author;
	private Book book;

	// Constructors

	/** default constructor */
	public Write() {
	}

	/** full constructor */
	public Write(Author author, Book book) {
		this.author = author;
		this.book = book;
	}

	// Property accessors

	public Integer getWriteid() {
		return this.writeid;
	}

	public void setWriteid(Integer writeid) {
		this.writeid = writeid;
	}

	public Author getAuthor() {
		return this.author;
	}

	public void setAuthor(Author author) {
		this.author = author;
	}

	public Book getBook() {
		return this.book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

}