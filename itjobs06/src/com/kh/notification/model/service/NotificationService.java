package com.kh.notification.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.notification.model.dao.NotificationDao;
import com.kh.notification.model.vo.Notification;

public class NotificationService {

	public ArrayList<Notification> getAllNotificationList() {
		Connection conn=getConnection();
		ArrayList<Notification> list=new NotificationDao().getAllNotificationList(conn);
		return list;
	}

	public int delete(int noti_no) {
		Connection conn=getConnection();
		int result=new NotificationDao().delete(conn,noti_no);
		close(conn);
		return result;
	}

	public int deleteCancle(int noti_no) {
		Connection conn=getConnection();
		int result=new NotificationDao().deleteCancle(conn,noti_no);
		close(conn);
		return result;
	}

	public ArrayList<Notification> getOpenNotificationList() {
		Connection conn=getConnection();
		ArrayList<Notification> list=new NotificationDao().getOpenNotificationList(conn);
		return list;
	}

	
}
