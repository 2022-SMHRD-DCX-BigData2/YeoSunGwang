package com.smhrd.domain;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import org.apache.ibatis.reflection.SystemMetaObject;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class BoardDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	SqlSession sqlSession = sqlSessionFactory.openSession();

	Connection conn = null;
	PreparedStatement psmt = null;
	
	// 광양 ALL
		public Board selectMember(Member login) {
			Member loginMember = null;
			try {
				// mapper.xml의 id값
				loginMember = sqlSession.selectOne("G_ALL", login);

				// 만약에 내가 원하는 일을 했으면 DB에 반영
				if (loginMember != null) {
					System.out.println("DAO : 로그인 성공!");
					sqlSession.commit();
				} else {
					// 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
					sqlSession.rollback();
				}

			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			} finally {
				// 빌렸던 Connection 객체를 반납
				sqlSession.close();
			}
			return loginMember;
		} // 로그인 끝

}
