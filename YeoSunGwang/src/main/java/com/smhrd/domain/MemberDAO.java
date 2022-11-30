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

public class MemberDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	SqlSession sqlSession = sqlSessionFactory.openSession();

	Connection conn = null;
	PreparedStatement psmt = null;

	// 회원가입 기능 구현
	public int insertMember(Member joinMember) {
		int cnt = 0;

		try {
			// mapper.xml의 id값
			// ↓
			cnt = sqlSession.insert("insertMember", joinMember);

			// 만약에 내가 원하는 일을 했으면
			if (cnt > 0) {
				System.out.println("DAO : 회원가입 성공!");
				sqlSession.commit();
			} else {
				// 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
				System.out.println("DAO : 회원가입 실패!");
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 빌렸던 Connection 객체를 반납
			sqlSession.close();
		}

		return cnt;
	} // 회원가입 끝

	// 아이디 중복 체크
	public int joinIdCheck(String id) {
		int result = -1;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("클래스 파일 로딩 완료!");
			// 1. DB연결
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:XE";
			String dbid = "suncheon_1109_1";
			String dbpw = "smhrd1";
			conn = DriverManager.getConnection(url, dbid, dbpw);
			if (conn != null) {
				System.out.println("DB연결 성공!");
			} else {
				System.out.println("DB연결 실패!");
			}
			// 2. sql 구문 & pstmt생성
			String sql = "select mem_id from mem_info where mem_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			// 3. 실행 -> select -> rs저장
			ResultSet rs = psmt.executeQuery();
			// 4. 데이터처리
			if (rs.next()) {
				result = 0;
			} else {
				result = 1;
			}
			System.out.println("아이디 중복체크결과 : " + result);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (psmt != null)
					psmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	} // 아이디 중복체크 끝

	// 이메일 중복체크
	public int joinEmailCheck(String email) {
			int result = -1;
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				System.out.println("클래스 파일 로딩 완료!");
				// 1. DB연결
				String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:XE";
				String dbid = "suncheon_1109_1";
				String dbpw = "smhrd1";
				conn = DriverManager.getConnection(url, dbid, dbpw);
				if (conn != null) {
					System.out.println("DB연결 성공!");
				} else {
					System.out.println("DB연결 실패!");
				}
				// 2. sql 구문 & pstmt생성
				String sql = "select mem_email from mem_info where mem_email=?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, email);
				// 3. 실행 -> select -> rs저장
				ResultSet rs = psmt.executeQuery();
				// 4. 데이터처리
				if (rs.next()) {
					result = 0;
				} else {
					result = 1;
				}
				System.out.println("이메일 중복체크결과 : " + result);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (psmt != null)
						psmt.close();
					if (conn != null)
						conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			return result;
		} // 이메일 중복체크 끝

	// 닉네임 중복체크
	public int joinNickCheck(String nick) {
			int result = -1;
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				System.out.println("클래스 파일 로딩 완료!");
				// 1. DB연결
				String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:XE";
				String dbid = "suncheon_1109_1";
				String dbpw = "smhrd1";
				conn = DriverManager.getConnection(url, dbid, dbpw);
				if (conn != null) {
					System.out.println("DB연결 성공!");
				} else {
					System.out.println("DB연결 실패!");
				}
				// 2. sql 구문 & pstmt생성
				String sql = "select mem_nick from mem_info where mem_nick=?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, nick);
				// 3. 실행 -> select -> rs저장
				ResultSet rs = psmt.executeQuery();
				// 4. 데이터처리
				if (rs.next()) {
					result = 0;
				} else {
					result = 1;
				}
				System.out.println("닉네임 중복체크결과 : " + result);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (psmt != null)
						psmt.close();
					if (conn != null)
						conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			return result;
		} // 닉네임 중복체크 끝
	
	
	// 로그인 기능구현
	public Member selectMember(Member login) {
		Member loginMember = null;
		try {
			// mapper.xml의 id값
			loginMember = sqlSession.selectOne("selectMember", login);

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

	public int updateMember(Member update) {
		int cnt = 0;

		try {
			// mapper.xml의 id값
			// ↓
			cnt = sqlSession.update("updateMember", update);

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
	}// 회원정보 수정 끝

	public int updateMember2(Member update2) {
		int cnt = 0;

		try {
			// mapper.xml의 id값
			// ↓
			cnt = sqlSession.update("updateMember2", update2);

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
	}// 회원정보 수정 끝

	// 아이디찾기 기능구현
	public Member FindID(Member FindId) {
		Member FindIdMember = null;
		try {
			// mapper.xml의 id값
			FindIdMember = sqlSession.selectOne("confirmid", FindId);

			// 만약에 내가 원하는 일을 했으면 DB에 반영
			if (FindIdMember != null) {
				System.out.println("DAO : 아이디찾기 성공!");
				sqlSession.commit();
			} else {
				// 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
				System.out.println("DAO : 아이디 찾기 실패@");
				sqlSession.rollback();
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			// 빌렸던 Connection 객체를 반납
			sqlSession.close();
		}
		return FindIdMember;
	} // 아이디찾기 끝

	// 비밀번호 찾기 기능구현
	public Member FindPw(Member FindPw) {
		Member FindPwMember = null;
		try {
			// mapper.xml의 id값
			FindPwMember = sqlSession.selectOne("confirmpw", FindPw);

			// 만약에 내가 원하는 일을 했으면 DB에 반영
			if (FindPwMember != null) {
				System.out.println("DAO : 비밀번호 찾기 성공!");
				sqlSession.commit();
			} else {
				// 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
				System.out.println("DAO : 비밀번호 찾기 실패@");
				sqlSession.rollback();
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			// 빌렸던 Connection 객체를 반납
			sqlSession.close();
		}
		return FindPwMember;
	} // 비밀번호 찾기 끝

	// 회원 전체 검색 기능 구현
	public List<Member> selectAll() {
		List<Member> memberList = null;
		try {
			// mapper.xml의 id값
			memberList = sqlSession.selectList("selectAll");

			// 만약에 내가 원하는 일을 했으면 DB에 반영
			if (memberList != null) {
				System.out.println("DAO : 회원 전체 검색 성공!");
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
		return memberList;
	} // 회원 전체 검색 끝

	// 관리자-회원삭제 기능구현
	public int deleteMember(String email) {
		int cnt = 0;

		try {
			// mapper.xml의 id값
			// ↓
			cnt = sqlSession.delete("deleteMember", email);

			// 만약에 내가 원하는 일을 했으면
			if (cnt > 0) {
				System.out.println("DAO : 회원정보삭제 성공!");
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
	}// 회원 삭제 끝
}