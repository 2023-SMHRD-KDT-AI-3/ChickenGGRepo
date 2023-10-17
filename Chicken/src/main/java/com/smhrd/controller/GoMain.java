package com.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.Brand;
import com.smhrd.model.BrandDAO;
import com.smhrd.model.Review_Table;
import com.smhrd.model.UserDAO;

public class GoMain extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 메인페이지 로드 전에 chart.js 사용하기 위해 로드
		Random rand = new Random();
		UserDAO dao = new UserDAO();
		ArrayList<Review_Table> review = dao.reviewall();
		int rdnum = rand.nextInt(review.size());
		System.out.println(review.get(rdnum));
		response.setContentType("text/json;charset=utf-8");
		request.setAttribute("Reviews", review.get(rdnum));
		// 메인페이지로 가기 위한 url생성 및 이동
		String url = "Main.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}

}
