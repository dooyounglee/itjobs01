package com.kh.board.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.board.model.vo.Board;
import com.kh.board.model.vo.PageInfo;

public class BoardDao {
	
	private Properties prop = new Properties();
	
	public BoardDao() {
		
		String fileName = BoardDao.class.getResource("/com/kh/sql/board-query.properties").getPath();
		fileName=fileName.replace("WEB-INF/classes/", "");
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int getMainListCount(Connection conn) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("getMainListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}
	
	public int getEtcListCount(Connection conn, String head) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("getEtcListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, head);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt(1);
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}
	
	public ArrayList<Board> selectMainList(Connection conn, PageInfo pi){
		ArrayList<Board> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMainList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() -1) * pi.getBoardLimit();
			int endRow = startRow + pi.getBoardLimit() -1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Board(rset.getInt("b_no"),
									rset.getString("m_no"),
									rset.getString("nickname"), 
									rset.getString("head"),
									rset.getString("title"),
									rset.getString("contents"),
									rset.getString("update_date"),
									rset.getString("time"),
									rset.getInt("count")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
		
	}
	
	public ArrayList<Board> selectEtcList(Connection conn, String head, PageInfo pi){
		ArrayList<Board> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectEtcList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() -1) * pi.getBoardLimit();
			int endRow = startRow + pi.getBoardLimit() -1;
			
			pstmt.setString(1, head);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Board(rset.getInt("b_no"),
									rset.getString("m_no"),
									rset.getString("nickname"), 
									rset.getString("head"),
									rset.getString("title"),
									rset.getString("contents"),
									rset.getString("update_date"),
									rset.getString("time"),
									rset.getInt("count")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
		
	}
	

}
