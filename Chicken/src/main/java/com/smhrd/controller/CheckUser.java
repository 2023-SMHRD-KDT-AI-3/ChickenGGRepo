package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.UserDAO;
import com.smhrd.model.t_user;


public class CheckUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String result = "";
		String id = request.getParameter("id");
		UserDAO dao = new UserDAO();
		t_user member = dao.check(id);

		if (member != null) {
			// 사용이 불가능한 이메일 // 데이터가 O
			System.out.println("true");

			result = "true";
		} else {
			// 사용이 가능한 이메일 // 데이터가 X
			System.out.println("false");
			result = "false";
		}
		PrintWriter out= response.getWriter();
		out.print(result);
	}

}
