package com.kh.notification.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.member.model.dao.MemberDao;
import com.kh.notification.model.vo.Notification;

public class NotificationDao {

	private Properties prop = new Properties();
	
	public NotificationDao() {
		
		String fileName = MemberDao.class.getResource("/com/kh/sql/notification-query.properties").getPath();
		fileName=fileName.replace("WEB-INF/classes/", "");
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	public ArrayList<Notification> getAllNotificationList(Connection conn) {
		ArrayList<Notification> list=new ArrayList<>();
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		String sql=prop.getProperty("getAllNotificationList");
		try {
			ps=conn.prepareStatement(sql);
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

	public int delete(Connection conn, int noti_no) {
		int result=0;
		PreparedStatement ps=null;
		
		String sql=prop.getProperty("delete");
		try {
			ps=conn.prepareStatement(sql);
			ps.setInt(1, noti_no);
			result=ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(ps);
		}
		return result;
	}

	public int deleteCancle(Connection conn, int noti_no) {
		int result=0;
		PreparedStatement ps=null;
		
		String sql=prop.getProperty("deleteCancle");
		try {
			ps=conn.prepareStatement(sql);
			ps.setInt(1, noti_no);
			result=ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(ps);
		}
		return result;
	}

	public ArrayList<Notification> getOpenNotificationList(Connection conn) {
		ArrayList<Notification> list=new ArrayList<>();
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		String sql=prop.getProperty("getOpenNotificationList");
		try {
			ps=conn.prepareStatement(sql);
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

}
