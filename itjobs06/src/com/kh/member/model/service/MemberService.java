package com.kh.member.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.Co_Info;
import com.kh.member.model.vo.Member;

public class MemberService {

	public Member login(Member m) {
		Connection conn=getConnection();
		Member mem=new MemberDao().login(conn,m);
		close(conn);
		return mem;
	}

	public Member getMemberByEmail(String email) {
		Connection conn=getConnection();
		Member m=new MemberDao().getMemberByEmail(conn,email);
		close(conn);
		return m;
	}

	public int insertMember(Member m) {
		Connection conn=getConnection();
		int result=new MemberDao().joinMember(conn,m);
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		return result;
	}

	public int insertMember(Co_Info co) {
		Connection conn=getConnection();
		int result=new MemberDao().joinMember(conn,co);
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		return result;
	}

	public ArrayList<Member> getAllMemberList() {
		Connection conn=getConnection();
		ArrayList<Member> list=new MemberDao().getAllMemberList(conn);
		close(conn);
		return list;
	}
	
	public int vanishMember(int mno) {
		Connection conn=getConnection();
		int result=new MemberDao().vanishMember(conn,mno);
		close(conn);
		return result;
	}

	public int vanishCancleMember(int mno) {
		Connection conn=getConnection();
		int result=new MemberDao().vanishCancleMember(conn,mno);
		close(conn);
		return result;
	}

	public Co_Info getCoInfo(Member m) {
		Connection conn=getConnection();
		Co_Info mem=new MemberDao().getCoInfo(conn,m);
		close(conn);
		return mem;
	}

	public int update(Member m) {
		Connection conn=getConnection();
		int result=new MemberDao().update(conn,m);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	public int update(Member m, Co_Info co) {
		Connection conn=getConnection();
		int result1=new MemberDao().update(conn,m);
		System.out.println(result1);
		int result2=new MemberDao().update(conn,co);
		System.out.println(result2);
		
		int result=0;
		if(result1>0 && result2>0) {
			result=1;
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

	public Member changePw(Member m, String newPw) {
		Connection conn=getConnection();
		Member mem=null;
		
		int result=new MemberDao().changePw(conn,m,newPw);
		if(result>0) {
			commit(conn);
			mem=new MemberDao().getMemberByEmail(conn, m.getEmail());
		}else {
			rollback(conn);
		}
		close(conn);
		return mem;
	}

}
