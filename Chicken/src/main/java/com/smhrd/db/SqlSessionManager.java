package com.smhrd.db;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {
	
	private static SqlSessionFactory sqlSessionFactory;
	
	// 프로그램이 시작된다면 SqlSession 바로 초기화 할 수 있는 구조 만들기!
	static {
		try {
			String resource = "com/smhrd/db/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	// SqlSessionFactoryBuilder().build 해당 결과를 담아서 사용할 수 있는 메소드 생성하기!
	public static SqlSessionFactory getSqlSession() {
		return sqlSessionFactory;
	}
	
}