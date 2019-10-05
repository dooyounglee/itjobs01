package com.kh.notification.model.service;

import static com.kh.common.JDBCTemplate.*;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.member.model.vo.Member;
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
		close(conn);
		return list;
	}

	public ArrayList<Notification> getMyNotificationList(Member mem) {
		Connection conn=getConnection();
		ArrayList<Notification> list=new NotificationDao().getMyNotificationList(conn,mem);
		close(conn);
		return list;
	}

	public Notification getNotification(int noti_no) {
		Connection conn=getConnection();
		Notification noti=new NotificationDao().getNotification(conn,noti_no);
		close(conn);
		return noti;
	}

	public int insertNotification(Notification n) {
		Connection conn=getConnection();
		int result=new NotificationDao().insertNotification(conn,n);
		close(conn);
		return result;
	}

	public Notification getLastestNotification() {
		Connection conn=getConnection();
		Notification noti=new NotificationDao().getLastestNotification(conn);
		close(conn);
		return noti;
	}

	public int updateNotification(Notification n) {
		Connection conn=getConnection();
		int result=new NotificationDao().updateNotification(conn,n);
		close(conn);
		return result;
	}

	public int openNotification(int noti_no) {
		Connection conn=getConnection();
		int result=new NotificationDao().openNotification(conn,noti_no);
		System.out.println("service-------"+result);
		close(conn);
		return result;
	}

	public int openCancleNotification(int noti_no) {
		Connection conn=getConnection();
		int result=new NotificationDao().openCancleNotification(conn,noti_no);
		close(conn);
		return result;
	}
	
	public int NotiLikeCheck(int likeNo, int memNo) {
		
		
	 	
		Connection conn = getConnection();
		//좋아요 중복체크하기 위해서
		int result = new NotificationDao().notiLikeCheck(conn,likeNo,memNo);
		
		if(result>0) { // 중복으로 좋아요 한 기업이 있으면 
		  int result1 = new NotificationDao().deleteLike(conn,likeNo,memNo);
		  	if(result1>0) {
		  		commit(conn);
		  	}else {
		  		rollback(conn);
		  	}
		  
		
		}else { // 좋아요가 없으면
		   int result2 = new NotificationDao().insertLike(conn,likeNo,memNo);
		   	if(result2>0) {
		   		commit(conn);
		   	}else {
		   		rollback(conn);
		   	}
		   
		}
		close(conn);
	
		return result;
	}
	
	
}
