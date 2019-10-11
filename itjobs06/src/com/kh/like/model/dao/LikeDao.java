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
				Member m=new Member();
				m.setM_no(rs.getInt("co_no"));
				m.setNickname(rs.getString("nickname"));
				m.setAddress(rs.getString("address"));
				m.setNumberOfNotification(rs.getInt("t"));
				list.add(m);
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
				Notification n=new Notification();
				n.setNoti_no(rs.getInt("noti_no"));
				n.setTitle(rs.getString("title"));
				n.setEnroll_date(rs.getDate("enroll_date")+" "+rs.getTime("enroll_date"));
				n.setEnd_date(rs.getDate("end_date")+" "+rs.getTime("end_date"));
				n.setAddress(rs.getString("address"));
				n.setNickname(rs.getString("nickname"));
				list.add(n);
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
				Resume r=new Resume();
				r.setResume_no(rs.getInt("resume_no"));
				r.setP_language(rs.getString("p_language"));
				r.setTitle(rs.getString("title"));
				r.setDepartment(rs.getString("department"));
				r.setCareer(rs.getString("career"));
				list.add(r);
			}
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

	public int deleteResume(Connection conn, int resume_no, int co_no) {
		int result=0;
		PreparedStatement ps=null;
		
		String sql=prop.getProperty("deleteResume");
		try {
			ps=conn.prepareStatement(sql);
			ps.setInt(1, resume_no);
			ps.setInt(2, co_no);
			result=ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public ArrayList<String> likeBoList(Connection conn, int memNo) {
	
		ArrayList<String> likeBoList = new ArrayList<>();
		int likeBoNo = 0;
		
		
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = prop.getProperty("likeBoList");
		
		try {
			ps=conn.prepareStatement(sql);
			ps.setInt(1, memNo);
			rs=ps.executeQuery();
			
			/*
			while(true) {
			if(rs.next()) {
				likeBoList.add(rs.getString(1));
				}
			}*/
			while(rs.next()) {
				likeBoList.add(rs.getString(1));
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(ps);
			close(rs);
		}
		
		return likeBoList;
		
		
	}
	

	public ArrayList<String> likeResList(Connection conn, int CoNo) {
	
		ArrayList<String> likeBoList = new ArrayList<>();
		int likeBoNo = 0;
		
		
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = prop.getProperty("likeResList");
		
		try {
			ps=conn.prepareStatement(sql);
			ps.setInt(1, CoNo);
			rs=ps.executeQuery();
			
			while(rs.next()) {
				likeBoList.add(rs.getString(1));
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(ps);
			close(rs);
		}
		
		return likeBoList;
		
		
	}
	

}
