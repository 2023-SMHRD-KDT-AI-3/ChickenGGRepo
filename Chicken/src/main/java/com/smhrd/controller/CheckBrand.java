package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.Brand;
import com.smhrd.model.BrandDAO;


public class CheckBrand extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String[] MapBrand = request.getParameterValues("MapBrand[]");
		System.out.println(MapBrand[0]);
		// 메인페이지 로드 전에 chart.js 사용하기 위해 로드
		BrandDAO dao = new BrandDAO();
		String [] MyBrand = {"교촌", "BBQ" , "자담치킨", "굽네치킨", "처갓집" , "호식이" , "페리카나"};
		String [] TopBrand = {"교촌", "BBQ" , "굽네치킨", "몰루" , "페리카나", "자담치킨" , "계동치킨"};
		ArrayList<Brand> FinalBrand = new ArrayList<Brand>();
		int num = 0;
		for (int i = 0; i < MyBrand.length; i++) {
			for (int j = 0; j < TopBrand.length; j++) {
				if (TopBrand[j].equals(MyBrand[i])) {
					FinalBrand.add(dao.getinfo(TopBrand[j]));
					num++;
					break;
				}
			}
			if (num == 5) {
				break;
			}
		}
	    Gson g=new Gson();
	    String json=g.toJson(FinalBrand);
		System.out.println(FinalBrand);
		//request.setAttribute("FinalBrand", FinalBrand);
		response.setContentType("text/json;charset=utf-8");
		PrintWriter out= response.getWriter();
		out.print(json);
	}

}
