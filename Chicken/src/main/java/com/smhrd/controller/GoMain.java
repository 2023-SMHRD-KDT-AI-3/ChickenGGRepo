package com.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Brand;
import com.smhrd.model.BrandDAO;

public class GoMain extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 메인페이지 로드 전에 chart.js 사용하기 위해 로드
		BrandDAO dao = new BrandDAO();
		String [] MyBrand = {"교촌", "BBQ" , "자담치킨", "굽네치킨", "처갓집" , "호식이" , "BHC"};
		String [] TopBrand = {"교촌", "BBQ" , "굽네치킨", "처갓집" , "몰루", "호식이" , "계동치킨"};
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
		System.out.println(FinalBrand);
		request.setAttribute("FinalBrand", FinalBrand);
		
		// 메인페이지로 가기 위한 url생성 및 이동
		String url = "Main.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}

}
