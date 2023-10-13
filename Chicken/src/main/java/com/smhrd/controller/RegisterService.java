package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.UserDAO;
import com.smhrd.model.t_user;

public class RegisterService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		
		t_user user = new t_user();
		user.setId(id);
		user.setPw(pw);
		user.setNick(nick);
		UserDAO dao = new UserDAO();
		int res = dao.register(user);
		if (res > 0) {
			System.out.println("회원가입성공");
			
		}else {
			System.out.println("실패...");
		}
		RequestDispatcher rd = request.getRequestDispatcher("LogOut.java");
		rd.forward(request, response);
	}

}
