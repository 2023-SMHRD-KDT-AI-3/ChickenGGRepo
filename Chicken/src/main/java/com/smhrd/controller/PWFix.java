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


public class PWFix extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String pw = request.getParameter("pw");
		t_user user = (t_user) session.getAttribute("info");
		UserDAO dao = new UserDAO();
		user.setPw(pw);
		int i = dao.changepw(user);
		if(i>0) {
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('비밀번호 변경 성공!'); location.href='MyPage.jsp';</script>"); 
			writer.close();
		}else {
			System.out.println("실패..");
		}
		RequestDispatcher rd = request.getRequestDispatcher("MyPage.jsp");
		rd.forward(request, response);
	}

}
