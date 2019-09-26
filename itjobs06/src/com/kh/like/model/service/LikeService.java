package com.kh.like.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.like.model.dao.LikeDao;
import com.kh.member.model.vo.Member;
import com.kh.notification.model.vo.Notification;

import static com.kh.common.JDBCTemplate.*;

public class LikeService {

	public ArrayList<Member> myCompanyList(int m_no) {
		Connection conn=getConnection();
		ArrayList<Member> list=new LikeDao().myCompanyList(conn,m_no);
		System.out.println(list);
		close(conn);
		return list;
	}

	public ArrayList<Notification> myNotificationList(int m_no) {
		Connection conn=getConnection();
		ArrayList<Notification> list=new LikeDao().myNotificationList(conn,m_no);
		close(conn);
		return list;
	}

	
}
