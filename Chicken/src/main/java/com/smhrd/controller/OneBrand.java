package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Brand;
import com.smhrd.model.BrandDAO;
import com.smhrd.model.Menu;

public class OneBrand extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String Brand = request.getParameter("Brand");
		System.out.println(Brand);
		BrandDAO dao = new BrandDAO();
		ArrayList<Menu> menu = dao.getmenu(Brand);
		System.out.println(menu);
		PrintWriter out= response.getWriter();
		out.print(menu);
	}

}
