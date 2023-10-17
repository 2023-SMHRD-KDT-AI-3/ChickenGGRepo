package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String select = request.getParameter("sr");
		System.out.println(select);
		String res = request.getParameter("sr_input");
		request.setAttribute("SearchRes", res);
		String url = "";
		if (select.equals("chi_brand")) {
			url = "Brand.jsp";
		}else if (select.equals("chi_menu")) {
			url = "Menu.jsp";
		}else {
			url = "Main.jsp";
		}
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}

}
