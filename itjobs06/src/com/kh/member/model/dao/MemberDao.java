package com.kh.member.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.member.model.vo.Co_Info;
import com.kh.member.model.vo.Member;
import com.kh.question.model.vo.Question;

public class MemberDao {

	private Properties prop = new Properties();
	
	public MemberDao() {
		
		String fileName = MemberDao.class.getResource("/com/kh/sql/member-query.properties").getPath();
		fileName=fileName.replace("WEB-INF/classes/", "");
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	public Member login(Connection conn, Member m) {
		Member mem=new Member();
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		String sql=prop.getProperty("login");
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1, m.getEmail());
			ps.setString(2, m.getPw());
			rs=ps.executeQuery();
			if(rs.next()) {
				mem=new Member(
						rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getDate(6)+" "+rs.getTime(6),
						rs.getDate(7)+" "+rs.getTime(7),
						rs.getString(8),
						rs.getInt(9));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return mem;
	}
	public Member getMemberByEmail(Connection conn, String email) {
		Member mem=new Member();
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		String sql=prop.getProperty("selectMemberByEmail");
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1, email);
			rs=ps.executeQuery();
			if(rs.next()) {
				mem=new Member(
						rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getDate(6)+" "+rs.getTime(6),
						rs.getDate(7)+" "+rs.getTime(7),
						rs.getString(8),
						rs.getInt(9));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return mem;
	}
	public int joinMember(Connection conn, Member m) {
		int result=0;
		PreparedStatement ps=null;
		
		String sql=prop.getProperty("joinMember");
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1, m.getType());
			ps.setString(2, m.getEmail());
			ps.setString(3, m.getPw());
			ps.setString(4, m.getNickname());
			result=ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	public int joinMember(Connection conn, Co_Info co) {
		int result=0;
		PreparedStatement ps=null;
		
		String sql=prop.getProperty("joinCompany");
		try {
			ps=conn.prepareStatement(sql);
			ps.setInt(1, co.getM_no());
			ps.setString(2, co.getRegNum());
			ps.setString(3, co.getFile());
			ps.setString(4, co.getPath());
			ps.setString(5, co.getName());
			ps.setString(6, co.getPhone());
			ps.setString(7, co.getAddress());
			ps.setString(8, co.getCeo());
			ps.setString(9, co.getCo_phone());
			ps.setString(10, co.getDescript());
			ps.setString(11, "2000-01-01");
			ps.setInt(12, co.getMemsum());
			ps.setInt(13, co.getRevenue());
			ps.setString(14, co.getHistory());
			ps.setString(15, co.getWelfare());
			result=ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	public ArrayList<Member> getAllMemberList(Connection conn) {
		ArrayList<Member> list=new ArrayList<>();
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		String sql=prop.getProperty("getAllMemberList");
		try {
			ps=conn.prepareStatement(sql);
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
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public int vanishMember(Connection conn, int mno) {
		int result=0;
		PreparedStatement ps=null;
		
		String sql=prop.getProperty("vanishMember");
		try {
			ps=conn.prepareStatement(sql);
			ps.setInt(1, mno);
			result=ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public int vanishCancleMember(Connection conn, int mno) {
		int result=0;
		PreparedStatement ps=null;
		
		String sql=prop.getProperty("vanishCancleMember");
		try {
			ps=conn.prepareStatement(sql);
			ps.setInt(1, mno);
			result=ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

}
