package com.kh.like.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.like.model.dao.LikeDao;
import com.kh.member.model.vo.Member;
import com.kh.notification.model.vo.Notification;
import com.kh.resume.model.vo.Resume;

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

	public ArrayList<Resume> myResumeList(int m_no) {
		Connection conn=getConnection();
		ArrayList<Resume> list=new LikeDao().myResumeList(conn,m_no);
		close(conn);
		return list;
	}

	public int deleteCompany(int co_no, int m_no) {
		Connection conn=getConnection();
		int result=new LikeDao().deleteCompany(conn,co_no,m_no);
		close(conn);
		return result;
	}

	public int deleteNotification(int noti_no, int m_no) {
		Connection conn=getConnection();
		int result=new LikeDao().deleteNotification(conn,noti_no,m_no);
		close(conn);
		return result;
	}

	public int deleteResume(int resume_no, int co_no) {
		Connection conn=getConnection();
		int result=new LikeDao().deleteResume(conn,resume_no,co_no);
		close(conn);
		return result;
	}

	
	public ArrayList<String> LikeBoList(int memNo) {
		
		Connection conn = getConnection();
		
		ArrayList<String> likeBoList = new LikeDao().likeBoList(conn,memNo);
		close(conn);
		return likeBoList;
	
	}
		
	public ArrayList<String> LikeResList(int CoNo) {
		
		Connection conn = getConnection();
		
		ArrayList<String> likeBoList = new LikeDao().likeResList(conn,CoNo);
		close(conn);
		return likeBoList;
	
	}
}
