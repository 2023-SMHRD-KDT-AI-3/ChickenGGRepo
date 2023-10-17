package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.BrandDAO;
import com.smhrd.model.Menu;

public class OneMenu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String menu = request.getParameter("Menu");
		BrandDAO dao = new BrandDAO();
		Menu resmenu = dao.Onemenu(menu);
		System.out.println(resmenu);
		Gson g=new Gson();
	    String json=g.toJson(resmenu);
		response.setContentType("text/json;charset=utf-8");
		PrintWriter out= response.getWriter();
		out.print(json);
	}

}
