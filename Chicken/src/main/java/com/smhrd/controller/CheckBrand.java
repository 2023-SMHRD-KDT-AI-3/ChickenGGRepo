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
//		String [] MyBrand = {"교촌", "BBQ" , "자담치", "굽네치", "처갓집" , "호식이" , "페리카"};
		String [] MyBrand = {"60계","BBQ","교촌","굽네치","김삿갓","꺳잎두","네네치","노랑통","둥근이",
				"또래오","또봉이","멕시카","멕시칸","부리나","불로만","수일통","순살만","아주커","양동가",
				"오빠통","용천통","자담치","지코바","처갓집","치순이","치킨플","친구통","투존치","티바두","페리카",
				"푸라닭","호식이","후라이","훌랄라"};
		String [] TopBrand = MapBrand;
		ArrayList<Brand> FinalBrand = new ArrayList<Brand>();
		int num = 0;
		for (int i = 0; i < TopBrand.length; i++) {
			for (int j = 0; j < MyBrand.length; j++) {
				if (TopBrand[i].equals(MyBrand[j])) {
					FinalBrand.add(dao.getinfo(TopBrand[i]));
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
