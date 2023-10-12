package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class BrandDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	ArrayList<Menu> menu = new ArrayList<>();
	public Brand getinfo(String get) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		Brand brand = sqlSession.selectOne("fivebrand" , get);
		sqlSession.close();
		return brand;
	}


	public ArrayList<Menu> getmenu(String brand) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		menu = (ArrayList) sqlSession.selectList("searchmenu" , brand);
		sqlSession.close();
		return menu;
	}

}
