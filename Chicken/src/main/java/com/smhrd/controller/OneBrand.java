package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
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
		int Calories = 0;
		int Protein = 0;
		int Price = 0;
		for (int i = 0; i < menu.size(); i++) {
			Calories += menu.get(i).getCalories();
			Protein += menu.get(i).getProtein();
			Price += menu.get(i).getMenu_price();
		}
		Calories = Calories/menu.size();
		Protein = Protein/menu.size();
		Price = Price/menu.size();
        JsonObject jsonObject = new JsonObject();
		Gson g=new Gson();
        jsonObject.addProperty("Calories", Calories);
        jsonObject.addProperty("Protein", Protein);
        jsonObject.addProperty("Price", Price);
        jsonObject.addProperty("Brand", Brand);
        String json = g.toJson(jsonObject);
        response.setContentType("text/json;charset=utf-8");
		PrintWriter out= response.getWriter();
		out.print(json);
	}

}
