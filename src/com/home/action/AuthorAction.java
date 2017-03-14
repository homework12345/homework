package com.home.action;

import java.util.ArrayList;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.home.dao.AuthorDao;
import com.home.model.Author;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class AuthorAction extends ActionSupport implements SessionAware {
	/* 业务层对象 */
	@Resource AuthorDao authorDao;

	private Author author;

	// 这两个成员变量是用来做登录拦截的，记得添加setter和getter

	private Map<String, Object> session;
	private String prePage;

	public Author getAuthor() {
		return author;
	}

	public void setAuthor(Author author) {
		this.author = author;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	private String errMessage;

	public String getErrMessage() {
		return errMessage;
	}

	public void setErrMessage(String errMessage) {
		this.errMessage = errMessage;
	}

	// 注册，并在session中加入用户名
	public String reg() throws Exception {
		authorDao.addAuthor(author);
		session.put("author", author);
		return "success";
	}
	/* 验证用户登录 */
	public String login() {
		ArrayList<Author> listAuthor = authorDao.queryauthorInfo(author.getAuthorname());
		if (listAuthor.size() == 0) {
			this.errMessage = " 账号不存在 ";
			System.out.print(this.errMessage);
			return "input";
		} else {
			Author db_author = listAuthor.get(0);
			if (!db_author.getPassword().equals(author.getPassword())) {
				this.errMessage = " 密码不正确! ";
				System.out.print(this.errMessage);
				return "input";

			} else {
				session.put("author", db_author);
				prePage = (String) session.get("prePage");
				System.out.println("将要跳到：" + prePage);
				session.remove("prePage");
				return "success";
			}
		}
	}

	public String getPrePage() {
		return prePage;
	}

	public void setPrePage(String prePage) {
		this.prePage = prePage;
	}

}
