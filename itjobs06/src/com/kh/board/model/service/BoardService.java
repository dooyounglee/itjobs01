package com.kh.board.model.service;

import static com.kh.common.JDBCTemplate.*;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.board.model.dao.BoardDao;
import com.kh.board.model.vo.Board;
import com.kh.board.model.vo.PageInfo;

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
	public Board selectBoard(int bId) {
		Connection conn = getConnection();
		
		int result = new BoardDao().countBoard(conn, bId);
		
		Board b = new Board();
		if(result > 0) {
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
	 * 5. 이전글 조회
	 * @param bId
	 * @return
	 */
	public Board prevBoard(int bId, String head) {
		Connection conn = getConnection();
		
		Board prev = new BoardDao().prevBoard(conn, bId, head);
		System.out.println(prev);
		
		close(conn);
		return prev;
	}
	
	public Board nextBoard(int bId, String head) {
		Connection conn = getConnection();
		
		Board next = new BoardDao().nextBoard(conn, bId, head);
		
		System.out.println(next);
		
		close(conn);
		return next;
	}

}