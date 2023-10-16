package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Review_Table;
import com.smhrd.model.UserDAO;
import com.smhrd.model.t_user;


public class GoMypage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
			UserDAO dao = new UserDAO();
			t_user user = (t_user) session.getAttribute("info");
			Review_Table review = dao.findreview(user);
			String review_text = review.getReview_content();
			session.setAttribute("Review_Content", review_text);
			RequestDispatcher rd = request.getRequestDispatcher("MyPage.jsp");
			rd.forward(request, response);
		}
		catch (Exception e) {
			RequestDispatcher rd = request.getRequestDispatcher("MyPage.jsp");
			rd.forward(request, response);
		}
	}

}
