package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Review_Table;
import com.smhrd.model.UserDAO;
import com.smhrd.model.t_user;


public class Review extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		// 인코딩
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String review = request.getParameter("review_text");
		t_user user = (t_user) session.getAttribute("info");
		System.out.println(review);
		Review_Table reviewtable = new Review_Table();
		UserDAO dao = new UserDAO();
		// 한줄평 삭제시켜놓기
		int res2 = dao.deletereview(user);
		if (res2>0) {
			System.out.println("한줄평 삭제 성공!");
		}
		//review에 넣어줄 유저정보, 메뉴, 한줄평 넣어주기
		reviewtable.setId(user.getId());
		reviewtable.setMenu_num(16);
		reviewtable.setReview_content(review);
		int res = dao.review(reviewtable);
		if (res > 0) {
			System.out.println("한줄평 등록 성공!");
			session.setAttribute("Review_Content", review);
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('한줄평 등록 성공!'); location.href='MyPage.jsp';</script>"); 
			writer.close();
		}else {
			System.out.println("한줄평 등록 실패");
		}
		RequestDispatcher rd = request.getRequestDispatcher("MyPage.jsp");
		rd.forward(request, response);
	}

}
