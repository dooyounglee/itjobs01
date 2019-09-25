package com.kh.board.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.board.model.dao.BoardDao;
import com.kh.board.model.vo.Board;

import static com.kh.common.JDBCTemplate.*;

public class BoardService {

	public ArrayList<Board> getList(String head) {
		Connection conn=getConnection();
		ArrayList<Board> list=new BoardDao().getList(conn,head);
		return list;
	}

	public int insert(Board b) {
		Connection conn=getConnection();
		int result=new BoardDao().insert(conn,b);
		close(conn);
		return result;
	}

	public int getLastest() {
		Connection conn=getConnection();
		int result=new BoardDao().getLastest(conn);
		close(conn);
		return result;
	}

	public Board getBoard(int b_no) {
		Connection conn=getConnection();
		Board b=new BoardDao().getBoard(conn,b_no);
		return b;
	}

	public int update(Board b) {
		Connection conn=getConnection();
		int result=new BoardDao().update(conn,b);
		close(conn);
		return result;
	}

	public int delete(int b_no) {
		Connection conn=getConnection();
		int result=new BoardDao().delete(conn,b_no);
		close(conn);
		return result;
	}

}
