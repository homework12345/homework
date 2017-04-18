package com.home.model;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

/**
 * Book entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "t_book", catalog = "giel")
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
	private Set<Write> writes = new HashSet<Write>(0);
	private Set<Order> orders = new HashSet<Order>(0);
	private Set<Order> orders_1 = new HashSet<Order>(0);

	// Constructors

	/** default constructor */
	public Book() {
	}

	/** minimal constructor */
	public Book(String bookname, String author) {
		this.bookname = bookname;
		this.author = author;
	}

	/** full constructor */
	public Book(String bookname, String author, String booktype,
			String bookwenan, String context, Double unitprice, String picture,
			Set<Write> writes, Set<Order> orders, Set<Order> orders_1) {
		this.bookname = bookname;
		this.author = author;
		this.booktype = booktype;
		this.bookwenan = bookwenan;
		this.context = context;
		this.unitprice = unitprice;
		this.picture = picture;
		this.writes = writes;
		this.orders = orders;
		this.orders_1 = orders_1;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "bookid", unique = true, nullable = false)
	public Integer getBookid() {
		return this.bookid;
	}

	public void setBookid(Integer bookid) {
		this.bookid = bookid;
	}

	@Column(name = "bookname", nullable = false, length = 43)
	public String getBookname() {
		return this.bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	@Column(name = "author", nullable = false, length = 32)
	public String getAuthor() {
		return this.author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	@Column(name = "booktype", length = 20)
	public String getBooktype() {
		return this.booktype;
	}

	public void setBooktype(String booktype) {
		this.booktype = booktype;
	}

	@Column(name = "bookwenan")
	public String getBookwenan() {
		return this.bookwenan;
	}

	public void setBookwenan(String bookwenan) {
		this.bookwenan = bookwenan;
	}

	@Column(name = "context")
	public String getContext() {
		return this.context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	@Column(name = "unitprice", precision = 22, scale = 0)
	public Double getUnitprice() {
		return this.unitprice;
	}

	public void setUnitprice(Double unitprice) {
		this.unitprice = unitprice;
	}

	@Column(name = "picture", length = 65535)
	public String getPicture() {
		return this.picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "book")
	public Set<Write> getWrites() {
		return this.writes;
	}

	public void setWrites(Set<Write> writes) {
		this.writes = writes;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "book")
	public Set<Order> getOrders() {
		return this.orders;
	}

	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "book")
	public Set<Order> getOrders_1() {
		return this.orders_1;
	}

	public void setOrders_1(Set<Order> orders_1) {
		this.orders_1 = orders_1;
	}

}