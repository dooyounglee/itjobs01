package com.kh.volunteer.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.notification.model.vo.Notification;
import com.kh.resume.model.dao.ResumeDao;
import com.kh.volunteer.model.vo.Volunteer;

public class VolunteerDao {

private Properties prop = new Properties();
	
	public VolunteerDao() {
		
		String fileName = ResumeDao.class.getResource("/com/kh/sql/volunteer-query.properties").getPath();
		fileName=fileName.replace("WEB-INF/classes/", "");
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Volunteer> getList(Connection conn, int noti_no) {
		ArrayList<Volunteer> list=new ArrayList<>();
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		String sql=prop.getProperty("getList");
		try {
			ps=conn.prepareStatement(sql);
			ps.setInt(1, noti_no);
			rs=ps.executeQuery();
			while(rs.next()) {
				list.add(new Volunteer(
						rs.getInt(1),
						rs.getInt(2),
						rs.getInt(3),
						rs.getDate(4)+" "+rs.getTime(4),
						rs.getString(5)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public ArrayList<Notification> getMyApplyList(Connection conn, int m_no) {
		ArrayList<Notification> list=new ArrayList<>();
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		String sql=prop.getProperty("getMyApplyList");
		try {
			ps=conn.prepareStatement(sql);
			ps.setInt(1, m_no);
			rs=ps.executeQuery();
			while(rs.next()) {
				Notification n=new Notification(
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
						rs.getInt(12));
				n.setV_date(rs.getString("v_date"));
				list.add(n);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public int apply(Connection conn, int noti_no, int resume_no) {
		int result=0;
		PreparedStatement ps=null;
		
		String sql=prop.getProperty("apply");
		try {
			ps=conn.prepareStatement(sql);
			ps.setInt(1, noti_no);
			ps.setInt(2, resume_no);
			result=ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

}
