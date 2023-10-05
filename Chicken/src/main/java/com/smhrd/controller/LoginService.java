package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.UserDAO;
import com.smhrd.model.t_user;


public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println(id);
		t_user user = new t_user();
		user.setId(id);
		user.setPw(pw);
		
		UserDAO dao = new UserDAO();
		t_user info = dao.login(user);
		System.out.println(info);
		
	}

}
