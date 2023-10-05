package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class UserDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	public t_user login(t_user user) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		t_user info = sqlSession.selectOne("login", user);
		sqlSession.close();
		return info;
	}
	
	
	
	
}
