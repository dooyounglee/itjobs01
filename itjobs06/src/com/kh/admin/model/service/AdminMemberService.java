package com.kh.admin.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.admin.model.dao.AdminMemberDao;
import com.kh.board.model.vo.PageInfo;
import com.kh.member.model.vo.Member;

public class AdminMemberService {

	public ArrayList<Member> getAllMemberList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Member> list = new AdminMemberDao().getAllMemberList(conn,pi);
		close(conn);
		return list;
	}
	
	public int vanishMember(int mno) {
		Connection conn = getConnection();
		int result = new AdminMemberDao().vanishMember(conn, mno);
		close(conn);
		return result;
	}

	public int vanishCancleMember(int mno) {
		Connection conn = getConnection();
		int result = new AdminMemberDao().vanishCancleMember(conn, mno);
		close(conn);
		return result;
	}

	public int getMemberListCount() {
		Connection conn = getConnection();
		int result = new AdminMemberDao().getMemberListCount(conn);
		close(conn);
		return result;
	}
}
