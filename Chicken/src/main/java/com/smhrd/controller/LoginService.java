package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

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
		response.setContentType("text/html; charset=UTF-8");
		// 유저에 비교할 id, pw 입력
		t_user user = new t_user();
		user.setId(id);
		user.setPw(pw);
		// DAO로 입력한 user 보내고 info로 받기
		UserDAO dao = new UserDAO();
		t_user info = dao.login(user);
		System.out.println(info);
		String url = null;
		if(info != null) {
			// 로그인 성공!
			// 세션 영역을 서블릿에서 사용하기 위해서는 객체 선언부터 필요하다!
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
			url = "goMain";
		}else {
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('로그인 실패!'); location.href='MyPage.jsp';</script>"); 
			writer.close();
			url = "MyPage.jsp";
		}
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}

}
