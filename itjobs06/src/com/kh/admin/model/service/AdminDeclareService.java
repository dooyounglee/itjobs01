package com.kh.admin.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.admin.model.dao.AdminDeclareDao;
import com.kh.declare.model.vo.Declare;

import static com.kh.common.JDBCTemplate.*;

public class AdminDeclareService {

	public ArrayList<Declare> getBoardList() {
		Connection conn = getConnection();
		ArrayList<Declare> list=new AdminDeclareDao().getBoardList(conn);
		close(conn);
		return list;
	}

	public ArrayList<Declare> getReplyList() {
		Connection conn = getConnection();
		ArrayList<Declare> list=new AdminDeclareDao().getReplyList(conn);
		close(conn);
		return list;
	}

	public ArrayList<Declare> getNotificationList() {
		Connection conn = getConnection();
		ArrayList<Declare> list=new AdminDeclareDao().getNotificationList(conn);
		close(conn);
		return list;
	}

}
