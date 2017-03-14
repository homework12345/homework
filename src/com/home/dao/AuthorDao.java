package com.home.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.home.model.Author;

@Service @Transactional
public class AuthorDao {
	@Resource SessionFactory factory;

	/* 添加Author信息 */
	public void addAuthor(Author author) throws Exception {
		Session s = factory.getCurrentSession();
		s.save(author);
	}

	/* 删除Author信息 */
	public void deleteAuthor(Integer authorId) throws Exception {
		Session s = factory.getCurrentSession();
		Object author = s.load(Author.class, authorId);
		s.delete(author);
	}

	/* 更新Author信息 */
	public void updateAuthor(Author author) throws Exception {
		Session s = factory.getCurrentSession();
		s.update(author);
	}

	/* 查询所有Author信息 */
	public ArrayList<Author> queryAllAuthor() {
		Session s = factory.getCurrentSession();
		String hql = "From Author";
		Query q = s.createQuery(hql);
		List authorList = q.list();
		return (ArrayList<Author>) authorList;
	}

	/* 根据主键获取对象 */
	public Author getAuthorById(Integer authorid) {
		Session s = factory.getCurrentSession();
		Author author = (Author) s.get(Author.class, authorid);
		return author;
	}

	/* 根据查询条件查询 */
	public ArrayList<Author> queryauthorInfo(String name) {
		Session s = factory.getCurrentSession();
		List authorList;
		String hql = "From Author author where 1=1";
		if (!name.equals("")) {
			hql = hql + " and author.authorname = '" + name + "'";
			Query q = s.createQuery(hql);
			authorList = q.list();
		} else {
			authorList = null;
		}
		return (ArrayList<Author>) authorList;
	}
}
