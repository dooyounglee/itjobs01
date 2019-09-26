package com.kh.notification.model.service;

import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.Member;
import com.kh.notification.model.dao.NotificationDao;
import com.kh.notification.model.vo.Notification;

public class NotificationService {

	public ArrayList<Notification> getAllNotificationList() {
		Connection conn=getConnection();
		ArrayList<Notification> list=new NotificationDao().getAllNotificationList(conn);
		return list;
	}

	
}
