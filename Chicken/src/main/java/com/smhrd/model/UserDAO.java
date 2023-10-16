package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.controller.Review;
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
	public int changepw(t_user user) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int res = sqlSession.update("pwchange", user);
		sqlSession.close();
		return res;
	}
	public int changenick(t_user user) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int res = sqlSession.update("nickchange", user);
		sqlSession.close();
		return res;
	}
	public int deletereview(t_user user) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int res = sqlSession.delete("reviewdelete", user);
		sqlSession.close();
		return res;
	}
	public int review(Review_Table review) { // 유저에 한줄평 넣어주기
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int res = sqlSession.insert("reviewinsert", review);
		sqlSession.close();
		return res;
	}
	public Review_Table findreview(t_user user) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		Review_Table review = sqlSession.selectOne("findreview", user);
		sqlSession.close();
		return review;
	}
	
	
	
	
}
