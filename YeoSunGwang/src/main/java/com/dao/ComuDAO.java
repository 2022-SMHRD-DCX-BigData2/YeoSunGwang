package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dto.ComuVO;
import com.smhrd.database.SqlSessionManager;

public class ComuDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	SqlSession sqlSession = sqlSessionFactory.openSession();

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs;

	
	// 최근 등록한 게시글이 먼저 나오도록 게시글 목록 출력
	public List<ComuVO> selectAllBoards() {
		List<ComuVO> comuList = null;
		try {
			// mapper.xml의 id값
			comuList = sqlSession.selectList("selectComu");

			// 만약에 내가 원하는 일을 했으면 DB에 반영
			if (comuList != null) {
				System.out.println("ComuDAO : 게시글 목록 불러오기 성공!");
				sqlSession.commit();
			} else {
				// 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
				System.out.println("ComuDAO : 게시글 목록 불러오기 실패!");
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 빌렸던 Connection 객체를 반납
			sqlSession.close();
		}
		return comuList;
	}
	
	// 게시글 작성
	public int insertComu(ComuVO cVo) {
		int cnt = 0;
		
		try {
			cnt = sqlSession.insert("insertComu", cVo);
			
			if(cnt > 0) {
				System.out.println("ComuDAO : 게시글 작성 성공");
				sqlSession.commit();
			}else {
				System.out.println("ComuDAO : 게시글 작성 실패");
				sqlSession.rollback();				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return cnt;
	}// 게시글 작성 끝
		

	
	// 게시판 글 상세 내용 보기 -> 글 번호로 찾아온다. 실패 null?
//	public ComuVO selectOneBoardByNum(String comu_num) {
//
//	}
	
	// 게시글 수정
	public void updateBoard(ComuVO cVo) {
		
	}
	
	// 게시글 삭제
	public void deleteBoard(String comu_num) {
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
