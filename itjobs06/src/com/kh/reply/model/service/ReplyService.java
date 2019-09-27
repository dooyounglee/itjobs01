package com.kh.reply.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.board.model.dao.BoardDao;
import com.kh.reply.model.dao.ReplyDao;
import com.kh.reply.model.vo.Reply;

public class ReplyService {

	public ArrayList<Reply> getAllReplyList() {
		Connection conn = getConnection();
		ArrayList<Reply> list=new ReplyDao().getAllReplyList(conn);
		close(conn);
		return list;
	}

	public int delete(int r_no) {
		Connection conn=getConnection();
		int result=new ReplyDao().delete(conn,r_no);
		close(conn);
		return result;
	}

	public int deleteCancle(int r_no) {
		Connection conn=getConnection();
		int result=new ReplyDao().deleteCancle(conn,r_no);
		close(conn);
		return result;
	}

}
