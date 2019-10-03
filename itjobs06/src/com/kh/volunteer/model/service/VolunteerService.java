package com.kh.volunteer.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.notification.model.vo.Notification;
import com.kh.volunteer.model.dao.VolunteerDao;
import com.kh.volunteer.model.vo.Volunteer;
import static com.kh.common.JDBCTemplate.*;

public class VolunteerService {

	public ArrayList<Volunteer> getList(int noti_no) {
		Connection conn=getConnection();
		ArrayList<Volunteer> list=new VolunteerDao().getList(conn,noti_no);
		close(conn);
		return list;
	}

	public ArrayList<Notification> getMyApplyList(int m_no) {
		Connection conn=getConnection();
		ArrayList<Notification> list=new VolunteerDao().getMyApplyList(conn,m_no);
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

}
