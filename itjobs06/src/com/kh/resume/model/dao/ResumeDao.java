package com.kh.resume.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.resume.model.vo.Resume;

public class ResumeDao {

	private Properties prop = new Properties();
	
	public ResumeDao() {
		
		String fileName = ResumeDao.class.getResource("/com/kh/sql/resume-query.properties").getPath();
		fileName=fileName.replace("WEB-INF/classes/", "");
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Resume> getOpenResumeList(Connection conn, String sKey, String sText) {
		ArrayList<Resume> list=new ArrayList<>();
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		String sql=prop.getProperty("getOpenResumeList");
		if(sKey!=null) {
			if(sText.equals("")) {
				sql+=" and "+sKey+" like '%'";

			}else {
				sql+=" and "+sKey+" like '%"+sText+"%'";
				
			}
		}
		System.out.println(sql);
		try {
			ps=conn.prepareStatement(sql);
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
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
