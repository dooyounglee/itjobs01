package com.kh.main;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.board.model.vo.Board;
import com.kh.notification.model.vo.Notification;

import static com.kh.common.JDBCTemplate.*;

public class MainService {

	public ArrayList<Notification> select5Notification() {
		Connection conn = getConnection();
		ArrayList<Notification> list=new MainDao().select5Notification(conn);
		close(conn);
		return list;
	}

	public ArrayList<Notification> select5NotificationEnd() {
		Connection conn = getConnection();
		ArrayList<Notification> list=new MainDao().select5NotificationEnd(conn);
		close(conn);
		return list;
	}

	public ArrayList<Board> select5Project() {
		Connection conn = getConnection();
		ArrayList<Board> list=new MainDao().select5Project(conn);
		close(conn);
		return list;
	}

	public ArrayList<Board> select5Study() {
		Connection conn = getConnection();
		ArrayList<Board> list=new MainDao().select5Study(conn);
		close(conn);
		return list;
	}

	public ArrayList<Board> select5Notice() {
		Connection conn = getConnection();
		ArrayList<Board> list=new MainDao().select5Notice(conn);
		close(conn);
		return list;
	}

	public ArrayList<Board> select5Free() {
		Connection conn = getConnection();
		ArrayList<Board> list=new MainDao().select5Free(conn);
		close(conn);
		return list;
	}

}
