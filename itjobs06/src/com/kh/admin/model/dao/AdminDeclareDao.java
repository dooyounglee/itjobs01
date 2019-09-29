package com.kh.admin.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;
import static com.kh.common.JDBCTemplate.*;
import com.kh.declare.model.vo.Declare;
import com.kh.question.model.dao.QuestionDao;

public class AdminDeclareDao {

	private Properties prop = new Properties();
	
	public AdminDeclareDao() {
		
		String fileName = QuestionDao.class.getResource("/com/kh/sql/declare-query.properties").getPath();
		fileName=fileName.replace("WEB-INF/classes/", "");
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Declare> getBoardList(Connection conn) {
		ArrayList<Declare> list = new ArrayList<>();
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		String sql=prop.getProperty("getAllBoardList");
		try {
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()) {
				Declare d=new Declare();
				d.setDe_no(rs.getInt(1));
				d.setB_no(rs.getInt(2));
				d.setM_no(rs.getInt(3));
				d.setContents(rs.getString(4));
				d.setEnroll_date(rs.getDate(5)+" "+rs.getTime(5));
				d.setComp_date(rs.getDate(6)+" "+rs.getTime(6));
				d.setStatus(rs.getString(7));
				list.add(d);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(ps);
		}
		
		return list;
	}

	public ArrayList<Declare> getReplyList(Connection conn) {
		ArrayList<Declare> list = new ArrayList<>();
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		String sql=prop.getProperty("getAllReplyList");
		try {
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()) {
				Declare d=new Declare();
				d.setDe_no(rs.getInt(1));
				d.setRe_no(rs.getInt(2));
				d.setM_no(rs.getInt(3));
				d.setContents(rs.getString(4));
				d.setEnroll_date(rs.getDate(5)+" "+rs.getTime(5));
				d.setComp_date(rs.getDate(6)+" "+rs.getTime(6));
				d.setStatus(rs.getString(7));
				list.add(d);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(ps);
		}
		
		return list;
	}

	public ArrayList<Declare> getNotificationList(Connection conn) {
		ArrayList<Declare> list = new ArrayList<>();
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		String sql=prop.getProperty("getAllNotificationList");
		try {
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()) {
				Declare d=new Declare();
				d.setDe_no(rs.getInt(1));
				d.setNoti_no(rs.getInt(2));
				d.setM_no(rs.getInt(3));
				d.setContents(rs.getString(4));
				d.setEnroll_date(rs.getDate(5)+" "+rs.getTime(5));
				d.setComp_date(rs.getDate(6)+" "+rs.getTime(6));
				d.setStatus(rs.getString(7));
				list.add(d);
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
