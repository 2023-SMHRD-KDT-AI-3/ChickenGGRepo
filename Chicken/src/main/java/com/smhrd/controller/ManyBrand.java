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

public class ManyBrand extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] Brands = request.getParameterValues("Brands[]");
		System.out.println(Brands[0]);
		BrandDAO dao = new BrandDAO();
		ArrayList<Menu> BrandMenu = new ArrayList<Menu>();
		ArrayList<Menu> FinalMenu = new ArrayList<Menu>();
		for (int i = 0; i < Brands.length; i++) {
			BrandMenu = dao.getmenu(Brands[i]);
			System.out.println(BrandMenu);
			int Calories = 0;
			int Protein = 0;
			int Price = 0;
			for (int j = 0; j < BrandMenu.size(); j++) {
				Calories += BrandMenu.get(j).getCalories();
				Protein += BrandMenu.get(j).getProtein();
				Price += BrandMenu.get(j).getMenu_price();
			}
			Calories = Calories/BrandMenu.size();
			Protein = Protein/BrandMenu.size();
			Price = Price/BrandMenu.size();
			Menu TemMenu = new Menu();
			TemMenu.setBrand_name(BrandMenu.get(i).getBrand_name());
			TemMenu.setCalories(Calories);
			TemMenu.setProtein(Protein);			
			TemMenu.setMenu_price(Price);
			FinalMenu.add(TemMenu);
			System.out.println(FinalMenu.get(i));
		}
		Gson g=new Gson();
	    String json=g.toJson(FinalMenu);
		response.setContentType("text/json;charset=utf-8");
		PrintWriter out= response.getWriter();
		out.print(json);
	}

}
