package com.kh.board.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.board.model.dao.BoardDao;
import com.kh.board.model.vo.Board;
import com.kh.board.model.vo.PageInfo;
import com.kh.reply.model.vo.Reply;

public class BoardService {

	/**
	 * 1_1.페이징 처리 위한 게시글 총 개수 조회(전체 head)
	 * @return
	 */
	public int getMainListCount() {
		Connection conn = getConnection();
		
		int result = new BoardDao().getMainListCount(conn);
		
		close(conn);
		return result;
	}
	
	/**
	 * 1_2.페이징 처리 위한 게시글 총 개수 조회(head 선택시)
	 * @param head
	 * @return
	 */
	public int getEtcListCount(String head) {
		Connection conn = getConnection();
		
		int result = new BoardDao().getEtcListCount(conn, head);
		
		close(conn);
		return result;
	}
	
	/**
	 * 2. 메인 리스트
	 * @param pi
	 * @return
	 */
	public ArrayList<Board> selectMainList(PageInfo pi){
		Connection conn = getConnection();
		
		ArrayList<Board> list = new BoardDao().selectMainList(conn, pi);
		
		close(conn);
		return list;
		
	}
	
	/**
	 * 2. head값 존재 시 리스트
	 * @param head
	 * @param pi
	 * @return
	 */
	public ArrayList<Board> selectEtcList(String head, PageInfo pi){
		Connection conn = getConnection();
		
		ArrayList<Board> list = new BoardDao().selectEtcList(conn, head, pi);
		
		close(conn);
		return list;
		
	}
	
	/**
	 * 3. 게시판 상세조회 서비스
	 * @param bId
	 * @return
	 */
	public Board selectBoard(int bId, int loginM_no) {
		Connection conn = getConnection();
		Board b = null;
		
		b = new BoardDao().selectBoard(conn, bId);	

		if(loginM_no == 0 || loginM_no != b.getM_no()) {	
			int result = new BoardDao().countBoard(conn, bId);
			commit(conn);	
			b = new BoardDao().selectBoard(conn, bId);
		}else {
			rollback(conn);	
		}

		close(conn);
		return b;
	}
	
	
	/**
	 * 4.게시글 삭제
	 * @param bId
	 * @return
	 */
	public int deleteBoard(int bId) {
		Connection conn = getConnection();
		
		int result = new BoardDao().deleteBoard(conn, bId);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result;
	}
	
	
	/**
	 * 5. 이전글 조회(etc)
	 * @param bId
	 * @return
	 */
	public Board prevEtcBoard(int bId, String head) {
		Connection conn = getConnection();
		
		Board prev = new BoardDao().prevEtcBoard(conn, bId, head);

		close(conn);
		return prev;
	}
	
	/**
	 * 6. 다음글 조회(etc)
	 * @param bId
	 * @param head
	 * @return
	 */
	public Board nextEtcBoard(int bId, String head) {
		Connection conn = getConnection();
		
		Board next = new BoardDao().nextEtcBoard(conn, bId, head);

		
		close(conn);
		return next;
	}
	
	
	/**
	 * 이전글 조회 main
	 * @param bId
	 * @return
	 */
	public Board prevMainBoard(int bId) {
		Connection conn = getConnection();
		
		Board prev = new BoardDao().prevMainBoard(conn, bId);
		System.out.println("서비스로 왔다" + prev);
		
		close(conn);
		return prev;
	}

	/**
	 * 다음글 조회 main
	 * @param bId
	 * @return
	 */
	public Board nextMainBoard(int bId) {
		Connection conn = getConnection();
		
		Board next = new BoardDao().nextMainBoard(conn, bId);
	
		
		close(conn);
		return next;
	}
	
	/**
	 * 게시판 글 추가
	 * @param b
	 * @return
	 */
	public int insertBoard(Board b) {
		Connection conn = getConnection();
		
		int result = new BoardDao().insertBoard(conn, b);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result;
	}
	
	/**
	 * 수정용 게시판 조회
	 * @param bId
	 * @return
	 */
	public Board selectUpdateBoard(int bId) {
		Connection conn = getConnection();
		
		Board b = new BoardDao().selectUpdateBoard(conn, bId);
		
		close(conn);
		return b;
	}
	
	/**
	 * 게시판 수정
	 * @param b
	 * @return
	 */
	public int updateBoard(Board b) {
		Connection conn = getConnection();
		
		int result = new BoardDao().updateBoard(conn, b);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	public String[] selectHead(int b_no) {
		Connection conn = getConnection();
		
		String[] head = new BoardDao().selectHead(conn, b_no);
	
		close(conn);
		return head;
	}
	
	public int insertDeclareBoard(int bId, int m_no, String content) {
		Connection conn = getConnection();
		
		int result = new BoardDao().insertDeclareBoard(conn, bId, m_no, content);
	
		if(result > 0) {
			commit(conn);
		}else{
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	public Board selectDownCountBoard(int bId) {
		Connection conn = getConnection();
		Board b = null;
		
		int result = new BoardDao().downCountUpBoard(conn, bId);
		
		if(result > 0) {
			commit(conn);
			b = new BoardDao().selectDownCountBoard(conn, bId);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return b;
	}
	
	public ArrayList<Reply> selectRlist(int bId) {
		Connection conn = getConnection();
		
		ArrayList<Reply> list  = new BoardDao().selectRlist(conn, bId);

		close(conn);
		return list;
	}
	
	public int insertReplyBoard(int bId, int m_no, String content) {
		Connection conn = getConnection();
		
		int result = new BoardDao().insertReplyBoard(conn, bId, m_no, content);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result;
	}
	
}