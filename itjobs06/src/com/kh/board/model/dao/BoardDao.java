package com.kh.board.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.board.model.vo.Board;

public class BoardDao {
	
	private Properties prop = new Properties();
	
	public BoardDao() {
		
		String fileName = BoardDao.class.getResource("/sql/board-query.properties").getPath();
		fileName=fileName.replace("WEB-INF/classes/", "");
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	public ArrayList<Board> getList(Connection conn, String head) {
		ArrayList<Board> list=new ArrayList<>();
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		String sql=prop.getProperty("getList");
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1, head);
			rs=ps.executeQuery();
			while(rs.next()) {
				list.add(new Board(
						rs.getInt(1),
						rs.getInt(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getDate(6)+" "+rs.getTime(6),
						rs.getDate(7)+" "+rs.getTime(7),
						rs.getString(8),
						rs.getInt(9),
						rs.getString(10),
						rs.getInt(11),
						rs.getString(12),
						rs.getString(13),
						rs.getString(14)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int insert(Connection conn, Board b) {
		int result=0;
		PreparedStatement ps=null;
		
		String sql=prop.getProperty("insert");
		try {
			ps=conn.prepareStatement(sql);
			ps.setInt(1, b.getM_no());
			ps.setString(2, b.getHead());
			ps.setString(3, b.getTitle());
			ps.setString(4, b.getContents());
			result=ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	public int getLastest(Connection conn) {
		int result=0;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		String sql=prop.getProperty("getLastest");
		try {
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			if(rs.next()) {
				result=rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public Board getBoard(Connection conn, int b_no) {
		Board b=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		String sql=prop.getProperty("getBoard");
		try {
			ps=conn.prepareStatement(sql);
			ps.setInt(1, b_no);
			rs=ps.executeQuery();
			if(rs.next()) {
				b=new Board(
						rs.getInt(1),
						rs.getInt(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getDate(6)+" "+rs.getTime(6),
						rs.getDate(7)+" "+rs.getTime(7),
						rs.getString(8),
						rs.getInt(9),
						rs.getString(10),
						rs.getInt(11),
						rs.getString(12),
						rs.getString(13),
						rs.getString(14));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return b;
	}
	public int update(Connection conn, Board b) {
		int result=0;
		PreparedStatement ps=null;
		
		String sql=prop.getProperty("update");
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1, b.getHead());
			ps.setString(2, b.getTitle());
			ps.setString(3, b.getContents());
			ps.setString(4, b.getTime());
			ps.setInt(5, b.getB_no());
			ps.setInt(6, b.getM_no());
			result=ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	public int delete(Connection conn, int b_no) {
		int result=0;
		PreparedStatement ps=null;
		
		String sql=prop.getProperty("delete");
		try {
			ps=conn.prepareStatement(sql);
			ps.setInt(1, b_no);
			result=ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

}
