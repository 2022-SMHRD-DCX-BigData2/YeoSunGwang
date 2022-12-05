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
import com.comu.controller.action.BoardViewAction;

public class CommentsDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	SqlSession sqlSession = sqlSessionFactory.openSession();

	Connection conn = null;
	PreparedStatement psmt = null;

	
	public int insertComments(Comments insertComments) {
		int cnt = 0;

		try {
			// mapper.xml의 id값
			// ↓
			cnt = sqlSession.insert("insertComments", insertComments);

			// 만약에 내가 원하는 일을 했으면
			if (cnt > 0) {
				System.out.println("DAO : 등록 성공!");
				sqlSession.commit();
			} else {
				// 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
				System.out.println("DAO : 등록 실패!");
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 빌렸던 Connection 객체를 반납
			sqlSession.close();
		}

		return cnt;
	}
	
	public int insertComuComments(Comments insertComuComments) {
		int cnt = 0;

		try {
			// mapper.xml의 id값
			// ↓
			cnt = sqlSession.insert("insertComuComments", insertComuComments);

			// 만약에 내가 원하는 일을 했으면
			if (cnt > 0) {
				System.out.println("DAO : 등록 성공!");
				sqlSession.commit();
			} else {
				// 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
				System.out.println("DAO : 등록 실패!");
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 빌렸던 Connection 객체를 반납
			sqlSession.close();
		}

		return cnt;
	}
	
	public int CommentsTOTAL(Comments updateComments) {
		int cnt = 0;

		try {
			// mapper.xml의 id값
			// ↓
			cnt = sqlSession.update("UpdateComments", updateComments);

			// 만약에 내가 원하는 일을 했으면
			if (cnt > 0) {
				System.out.println("DAO : 회원정보수정 성공!");
				sqlSession.commit();
			} else {
				// 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 빌렸던 Connection 객체를 반납
			sqlSession.close();
		}
		return cnt;
	}// 댓글 업데이트 끝
	
	public List<Comments> C_ALL() {
		List<Comments>C_ALL = null;
		try {
			// mapper.xml의 id값
			C_ALL = sqlSession.selectList("ViewComments");

			// 만약에 내가 원하는 일을 했으면 DB에 반영
			if (C_ALL != null) {
				System.out.println("DAO : 댓글 리스트 검색 성공!");
				sqlSession.commit();
			} else {
				// 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
				System.out.println("DAO : 댓글 리스트 검색 실패!");
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 빌렸던 Connection 객체를 반납
			sqlSession.close();
		}
		return C_ALL;
	} 
	
	public List<Comments> C_COMU() {
		List<Comments>C_COMU = null;
		try {
			// mapper.xml의 id값
			C_COMU = sqlSession.selectList("ViewComuComments");

			// 만약에 내가 원하는 일을 했으면 DB에 반영
			if (C_COMU != null) {
				System.out.println("DAO : 댓글 리스트 검색 성공!");
				sqlSession.commit();
			} else {
				// 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
				System.out.println("DAO : 댓글 리스트 검색 실패!");
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 빌렸던 Connection 객체를 반납
			sqlSession.close();
		}
		return C_COMU;
	} 
}
