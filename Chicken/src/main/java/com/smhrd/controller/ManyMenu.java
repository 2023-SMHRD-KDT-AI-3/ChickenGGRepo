package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.BrandDAO;
import com.smhrd.model.Menu;


public class ManyMenu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String[] Menus = request.getParameterValues("Menus[]");
		System.out.println(Menus[0]);
		BrandDAO dao = new BrandDAO();
		ArrayList<Menu> res = new ArrayList<Menu>();
		for (int i = 0; i < Menus.length; i++) {
			res.add( dao.Onemenu(Menus[i]));
		}
		System.out.println(res);
		Gson g=new Gson();
	    String json=g.toJson(res);
		response.setContentType("text/json;charset=utf-8");
		PrintWriter out= response.getWriter();
		out.print(json);
	}

}
