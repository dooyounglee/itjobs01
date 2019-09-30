package com.kh.volunteer.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

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

}
