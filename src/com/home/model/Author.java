package com.home.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Author entity. @author MyEclipse Persistence Tools
 */

public class Author implements java.io.Serializable {

	// Fields

	private Integer authorid;
	private String authorname;
	private String authorjianjie;
	private String password;
	private Set writes = new HashSet(0);

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
			Set writes) {
		this.authorname = authorname;
		this.authorjianjie = authorjianjie;
		this.password = password;
		this.writes = writes;
	}

	// Property accessors

	public Integer getAuthorid() {
		return this.authorid;
	}

	public void setAuthorid(Integer authorid) {
		this.authorid = authorid;
	}

	public String getAuthorname() {
		return this.authorname;
	}

	public void setAuthorname(String authorname) {
		this.authorname = authorname;
	}

	public String getAuthorjianjie() {
		return this.authorjianjie;
	}

	public void setAuthorjianjie(String authorjianjie) {
		this.authorjianjie = authorjianjie;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Set getWrites() {
		return this.writes;
	}

	public void setWrites(Set writes) {
		this.writes = writes;
	}

}