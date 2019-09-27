package com.kh.board.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.board.model.dao.BoardDao;
import com.kh.board.model.vo.Board;
import com.kh.board.model.vo.PageInfo;

public class BoardService {

	/**
	 * 1_1.페이징 처리 위한 게시글 총 개수 조회
	 * @return
	 */
	public int getMainListCount() {
		Connection conn = getConnection();
		
		int result = new BoardDao().getMainListCount(conn);
		
		close(conn);
		return result;
	}
	
	public int getEtcListCount(String head) {
		Connection conn = getConnection();
		
		int result = new BoardDao().getEtcListCount(conn, head);
		
		close(conn);
		return result;
	}
	
	public ArrayList<Board> selectMainList(PageInfo pi){
		Connection conn = getConnection();
		
		ArrayList<Board> list = new BoardDao().selectMainList(conn, pi);
		
		close(conn);
		return list;
		
	}
	
	public ArrayList<Board> selectEtcList(String head, PageInfo pi){
		Connection conn = getConnection();
		
		ArrayList<Board> list = new BoardDao().selectEtcList(conn, head, pi);
		
		close(conn);
		return list;
		
	}

}
