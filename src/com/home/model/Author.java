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
 * Author entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "t_author", catalog = "giel")
public class Author implements java.io.Serializable {

	// Fields

	private Integer authorid;
	private String authorname;
	private String authorjianjie;
	private String password;
	private Set<Write> writes = new HashSet<Write>(0);

	// Constructors

	/** default constructor */
	public Author() {
	}

	/** minimal constructor */
	public Author(String authorname) {
		this.authorname = authorname;
	}

	/** full constructor */
	public Author(String authorname, String authorjianjie, String password,
			Set<Write> writes) {
		this.authorname = authorname;
		this.authorjianjie = authorjianjie;
		this.password = password;
		this.writes = writes;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "authorid", unique = true, nullable = false)
	public Integer getAuthorid() {
		return this.authorid;
	}

	public void setAuthorid(Integer authorid) {
		this.authorid = authorid;
	}

	@Column(name = "authorname", nullable = false, length = 32)
	public String getAuthorname() {
		return this.authorname;
	}

	public void setAuthorname(String authorname) {
		this.authorname = authorname;
	}

	@Column(name = "authorjianjie")
	public String getAuthorjianjie() {
		return this.authorjianjie;
	}

	public void setAuthorjianjie(String authorjianjie) {
		this.authorjianjie = authorjianjie;
	}

	@Column(name = "password", length = 32)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "author")
	public Set<Write> getWrites() {
		return this.writes;
	}

	public void setWrites(Set<Write> writes) {
		this.writes = writes;
	}

}