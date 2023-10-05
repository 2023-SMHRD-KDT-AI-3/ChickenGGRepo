package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		if(info != null) {
			// 로그인 성공!
			// 세션 영역을 서블릿에서 사용하기 위해서는 객체 선언부터 필요하다!
			 HttpSession session = request.getSession();
			 session.setAttribute("info", info);
		}
		RequestDispatcher rd = request.getRequestDispatcher("goMain");
		rd.forward(request, response);
	}

}
