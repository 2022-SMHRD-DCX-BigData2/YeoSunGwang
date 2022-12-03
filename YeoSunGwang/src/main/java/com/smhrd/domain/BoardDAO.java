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

	//
	public List<BoardVO> G_ALL() {
		List<BoardVO> G_boardAll = null;
		try {
			// mapper.xml의 id값
			G_boardAll = sqlSession.selectList("G_ALL");

			// 만약에 내가 원하는 일을 했으면 DB에 반영
			if (G_boardAll != null) {
				System.out.println("DAO : 광양 리스트 검색 성공!");
				sqlSession.commit();
			} else {
				// 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
				System.out.println("DAO : 광양 리스트 검색 실패!");
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 빌렸던 Connection 객체를 반납
			sqlSession.close();
		}
		return G_boardAll;
	} // 회원 전체 검색 끝

	public List<BoardVO> G_RES() {
		List<BoardVO> G_RES = null;
		try {
			// mapper.xml의 id값
			G_RES = sqlSession.selectList("G_RES");

			// 만약에 내가 원하는 일을 했으면 DB에 반영
			if (G_RES != null) {
				System.out.println("DAO : 광양 리스트 검색 성공!");
				sqlSession.commit();
			} else {
				// 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
				System.out.println("DAO : 광양 리스트 검색 실패!");
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 빌렸던 Connection 객체를 반납
			sqlSession.close();
		}
		return G_RES;
	} // 회원 전체 검색 끝

	public List<BoardVO> G_CAFE() {
		List<BoardVO> G_CAFE = null;
		try {
			// mapper.xml의 id값
			G_CAFE = sqlSession.selectList("G_CAFE");

			// 만약에 내가 원하는 일을 했으면 DB에 반영
			if (G_CAFE != null) {
				System.out.println("DAO : 광양 리스트 검색 성공!");
				sqlSession.commit();
			} else {
				// 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
				System.out.println("DAO : 광양 리스트 검색 실패!");
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 빌렸던 Connection 객체를 반납
			sqlSession.close();
		}
		return G_CAFE;
	} // 회원 전체 검색 끝

	public List<BoardVO> G_TOUR() {
		List<BoardVO> G_TOUR = null;
		try {
			// mapper.xml의 id값
			G_TOUR = sqlSession.selectList("G_TOUR");

			// 만약에 내가 원하는 일을 했으면 DB에 반영
			if (G_TOUR != null) {
				System.out.println("DAO : 광양 리스트 검색 성공!");
				sqlSession.commit();
			} else {
				// 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
				System.out.println("DAO : 광양 리스트 검색 실패!");
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 빌렸던 Connection 객체를 반납
			sqlSession.close();
		}
		return G_TOUR;
	} // 회원 전체 검색 끝

	public List<BoardVO> S_ALL() {
		List<BoardVO> S_boardAll = null;
		try {
			// mapper.xml의 id값
			S_boardAll = sqlSession.selectList("S_ALL");

			// 만약에 내가 원하는 일을 했으면 DB에 반영
			if (S_boardAll != null) {
				System.out.println("DAO : 광양 리스트 검색 성공!");
				sqlSession.commit();
			} else {
				// 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
				System.out.println("DAO : 광양 리스트 검색 실패!");
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 빌렸던 Connection 객체를 반납
			sqlSession.close();
		}
		return S_boardAll;
	} // 회원 전체 검색 끝

	public List<BoardVO> S_RES() {
		List<BoardVO> S_RES = null;
		try {
			// mapper.xml의 id값
			S_RES = sqlSession.selectList("S_RES");

			// 만약에 내가 원하는 일을 했으면 DB에 반영
			if (S_RES != null) {
				System.out.println("DAO : 광양 리스트 검색 성공!");
				sqlSession.commit();
			} else {
				// 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
				System.out.println("DAO : 광양 리스트 검색 실패!");
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 빌렸던 Connection 객체를 반납
			sqlSession.close();
		}
		return S_RES;
	} // 회원 전체 검색 끝

	public List<BoardVO> S_CAFE() {
		List<BoardVO> S_CAFE = null;
		try {
			// mapper.xml의 id값
			S_CAFE = sqlSession.selectList("S_CAFE");

			// 만약에 내가 원하는 일을 했으면 DB에 반영
			if (S_CAFE != null) {
				System.out.println("DAO : 광양 리스트 검색 성공!");
				sqlSession.commit();
			} else {
				// 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
				System.out.println("DAO : 광양 리스트 검색 실패!");
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 빌렸던 Connection 객체를 반납
			sqlSession.close();
		}
		return S_CAFE;
	} // 회원 전체 검색 끝

	public List<BoardVO> S_TOUR() {
		List<BoardVO> S_TOUR = null;
		try {
			// mapper.xml의 id값
			S_TOUR = sqlSession.selectList("S_TOUR");

			// 만약에 내가 원하는 일을 했으면 DB에 반영
			if (S_TOUR != null) {
				System.out.println("DAO : 광양 리스트 검색 성공!");
				sqlSession.commit();
			} else {
				// 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
				System.out.println("DAO : 광양 리스트 검색 실패!");
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 빌렸던 Connection 객체를 반납
			sqlSession.close();
		}
		return S_TOUR;
	} // 회원 전체 검색 끝 
	
	public List<BoardVO> Y_ALL(){

	List<BoardVO> Y_boardAll = null;try
	{
		// mapper.xml의 id값
		Y_boardAll = sqlSession.selectList("Y_ALL");

		// 만약에 내가 원하는 일을 했으면 DB에 반영
		if (Y_boardAll != null) {
			System.out.println("DAO : 광양 리스트 검색 성공!");
			sqlSession.commit();
		} else {
			// 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
			System.out.println("DAO : 광양 리스트 검색 실패!");
			sqlSession.rollback();
		}

	}catch(
	Exception e)
	{
		e.printStackTrace();
	}finally
	{
		// 빌렸던 Connection 객체를 반납
		sqlSession.close();
	}return Y_boardAll;
} // 회원 전체 검색 끝

public List<BoardVO> Y_RES(){
	List<BoardVO> Y_RES = null;
	try {
         //               mapper.xml의 id값
		Y_RES = sqlSession.selectList("Y_RES");
         
         // 만약에 내가 원하는 일을 했으면 DB에 반영
         if(Y_RES != null) {
            System.out.println("DAO : 광양 리스트 검색 성공!");
            sqlSession.commit();
         }else {
            // 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
        	 System.out.println("DAO : 광양 리스트 검색 실패!");
            sqlSession.rollback();
         }
         
         
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         // 빌렸던 Connection 객체를 반납
         sqlSession.close();
      }
	return Y_RES;
} // 회원 전체 검색 끝

	public List<BoardVO> Y_CAFE() {
		List<BoardVO> Y_CAFE = null;
		try {
			// mapper.xml의 id값
			Y_CAFE = sqlSession.selectList("Y_CAFE");

			// 만약에 내가 원하는 일을 했으면 DB에 반영
			if (Y_CAFE != null) {
				System.out.println("DAO : 광양 리스트 검색 성공!");
				sqlSession.commit();
			} else {
				// 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
				System.out.println("DAO : 광양 리스트 검색 실패!");
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 빌렸던 Connection 객체를 반납
			sqlSession.close();
		}
		return Y_CAFE;
	} // 회원 전체 검색 끝

	public List<BoardVO> Y_TOUR() {
		List<BoardVO> Y_TOUR = null;
		try {
			// mapper.xml의 id값
			Y_TOUR = sqlSession.selectList("Y_TOUR");

			// 만약에 내가 원하는 일을 했으면 DB에 반영
			if (Y_TOUR != null) {
				System.out.println("DAO : 광양 리스트 검색 성공!");
				sqlSession.commit();
			} else {
				// 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
				System.out.println("DAO : 광양 리스트 검색 실패!");
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 빌렸던 Connection 객체를 반납
			sqlSession.close();
		}
		return Y_TOUR;
	} // 회원 전체 검색 끝
	
	public List<BoardVO> P_ALL() {
		List<BoardVO> P_ALL = null;
		try {
			// mapper.xml의 id값
			P_ALL = sqlSession.selectList("P_ALL");

			// 만약에 내가 원하는 일을 했으면 DB에 반영
			if (P_ALL != null) {
				System.out.println("DAO : 광양 리스트 검색 성공!");
				sqlSession.commit();
			} else {
				// 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
				System.out.println("DAO : 광양 리스트 검색 실패!");
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 빌렸던 Connection 객체를 반납
			sqlSession.close();
		}
		return P_ALL;
	} // 회원 전체 검색 끝
	
}
