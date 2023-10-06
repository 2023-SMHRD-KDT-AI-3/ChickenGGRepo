package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class UserDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	// 로그인 DAO
	public t_user login(t_user user) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		t_user info = sqlSession.selectOne("login", user);
		sqlSession.close();
		return info;
	}
	public int register(t_user user) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int res = sqlSession.insert("join", user);
		sqlSession.close();
		return res;
	}
	public t_user check(String id) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		t_user user = sqlSession.selectOne("check",id);
		sqlSession.close();
		return user;
	}
	
	
	
	
}
