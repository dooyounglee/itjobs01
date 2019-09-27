package com.kh.declare.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.declare.model.dao.DeclareDao;
import com.kh.declare.model.vo.Declare;

import static com.kh.common.JDBCTemplate.*;

public class DeclareService {

	public ArrayList<Declare> getBoardList() {
		Connection conn = getConnection();
		ArrayList<Declare> list=new DeclareDao().getBoardList(conn);
		close(conn);
		return list;
	}

	public ArrayList<Declare> getReplyList() {
		Connection conn = getConnection();
		ArrayList<Declare> list=new DeclareDao().getReplyList(conn);
		close(conn);
		return list;
	}

	public ArrayList<Declare> getNotificationList() {
		Connection conn = getConnection();
		ArrayList<Declare> list=new DeclareDao().getNotificationList(conn);
		close(conn);
		return list;
	}

}
