package com.home.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

/**
 * Write entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "t_write", catalog = "giel")
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
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "writeid", unique = true, nullable = false)
	public Integer getWriteid() {
		return this.writeid;
	}

	public void setWriteid(Integer writeid) {
		this.writeid = writeid;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "author", nullable = false)
	public Author getAuthor() {
		return this.author;
	}

	public void setAuthor(Author author) {
		this.author = author;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "book", nullable = false)
	public Book getBook() {
		return this.book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

}