package com.kh.like.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;
import static com.kh.common.JDBCTemplate.*;
import com.kh.member.model.vo.Member;
import com.kh.notification.model.vo.Notification;
import com.kh.question.model.dao.QuestionDao;
import com.kh.resume.model.vo.Resume;

public class LikeDao {

	private Properties prop = new Properties();
	
	public LikeDao() {
		
		String fileName = QuestionDao.class.getResource("/com/kh/sql/like-query.properties").getPath();
		fileName=fileName.replace("WEB-INF/classes/", "");
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Member> myCompanyList(Connection conn, int m_no) {
		ArrayList<Member> list=new ArrayList<>();
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		String sql=prop.getProperty("getMyCompanyList");
		try {
			ps=conn.prepareStatement(sql);
			ps.setInt(1, m_no);
			rs=ps.executeQuery();
			while(rs.next()) {
				list.add(new Member(
						rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getDate(6)+" "+rs.getTime(6),
						rs.getDate(7)+" "+rs.getTime(7),
						rs.getString(8),
						rs.getInt(9)));
				System.out.println(list);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(ps);
		}
		return list;
	}

	public ArrayList<Notification> myNotificationList(Connection conn, int m_no) {
		ArrayList<Notification> list=new ArrayList<>();
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		String sql=prop.getProperty("getMyNotificationList");
		try {
			ps=conn.prepareStatement(sql);
			ps.setInt(1, m_no);
			rs=ps.executeQuery();
			while(rs.next()) {
				list.add(new Notification(
						rs.getInt(1),
						rs.getInt(2),
						rs.getString(3),
						rs.getDate(4)+" "+rs.getTime(4),
						rs.getDate(5)+" "+rs.getTime(5),
						rs.getString(6),
						rs.getInt(7),
						rs.getString(8),
						rs.getString(9),
						rs.getString(10),
						rs.getString(11),
						rs.getInt(12)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(ps);
		}
		return list;
	}

	public ArrayList<Resume> myResumeList(Connection conn, int m_no) {
		ArrayList<Resume> list=new ArrayList<>();
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		String sql=prop.getProperty("getMyResumeList");
		try {
			ps=conn.prepareStatement(sql);
			ps.setInt(1, m_no);
			rs=ps.executeQuery();
			while(rs.next()) {
				list.add(new Resume(
						rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getDate(5)+" "+rs.getTime(5),
						rs.getString(6),
						rs.getString(7),
						rs.getString(8),
						rs.getString(9),
						rs.getString(10),
						rs.getString(11),
						rs.getString(12),
						rs.getString(13),
						rs.getString(14),
						rs.getString(15),
						rs.getString(16),
						rs.getDate(17)+" "+rs.getTime(17),
						rs.getString(18),
						rs.getString(20),
						rs.getDate(21)+" "+rs.getTime(21),
						rs.getString(22),
						rs.getString(23),
						rs.getInt(24)));
			}
			System.out.println(list);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public int deleteCompany(Connection conn, int co_no, int m_no) {
		int result=0;
		PreparedStatement ps=null;
		
		String sql=prop.getProperty("deleteCompany");
		try {
			ps=conn.prepareStatement(sql);
			ps.setInt(1, co_no);
			ps.setInt(2, m_no);
			result=ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public int deleteNotification(Connection conn, int noti_no, int m_no) {
		int result=0;
		PreparedStatement ps=null;
		
		String sql=prop.getProperty("deleteNotification");
		try {
			ps=conn.prepareStatement(sql);
			ps.setInt(1, noti_no);
			ps.setInt(2, m_no);
			result=ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public int deleteResume(Connection conn, int resume_no, int m_no) {
		int result=0;
		PreparedStatement ps=null;
		
		String sql=prop.getProperty("deleteResume");
		try {
			ps=conn.prepareStatement(sql);
			ps.setInt(1, resume_no);
			ps.setInt(2, m_no);
			result=ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

}
