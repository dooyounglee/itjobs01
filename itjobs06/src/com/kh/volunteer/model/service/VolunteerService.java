package com.kh.volunteer.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.volunteer.model.dao.VolunteerDao;
import com.kh.volunteer.model.vo.Volunteer;

public class VolunteerService {

	public ArrayList<Volunteer> getList(int noti_no) {
		Connection conn=getConnection();
		ArrayList<Volunteer> list=new VolunteerDao().getList(conn,noti_no);
		close(conn);
		return list;
	}

	public ArrayList<Volunteer> getMyApplyList(int m_no) {
		Connection conn=getConnection();
		ArrayList<Volunteer> list=new VolunteerDao().getMyApplyList(conn,m_no);
		close(conn);
		return list;
	}

	public int apply(int noti_no, int resume_no) {
		Connection conn=getConnection();
		int result=new VolunteerDao().apply(conn,noti_no,resume_no);
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

	public int applyCancle(int v_no) {
		Connection conn=getConnection();
		int result=new VolunteerDao().applyCancle(conn,v_no);
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

}
