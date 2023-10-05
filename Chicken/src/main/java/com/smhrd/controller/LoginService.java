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
	// 로그인 서비스 컨트롤러
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		// 유저에 비교할 id, pw 입력
		t_user user = new t_user();
		user.setId(id);
		user.setPw(pw);
		// DAO로 입력한 user 보내고 info로 받기
		UserDAO dao = new UserDAO();
		t_user info = dao.login(user);
		System.out.println(info);
		
	}

}
