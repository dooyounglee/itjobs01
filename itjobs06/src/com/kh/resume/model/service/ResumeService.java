package com.kh.resume.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.resume.model.dao.ResumeDao;
import com.kh.resume.model.vo.Resume;

import static com.kh.common.JDBCTemplate.*;

public class ResumeService {

	public ArrayList<Resume> getOpenResumeList() {
		Connection conn=getConnection();
		ArrayList<Resume> list=new ResumeDao().getOpenResumeList(conn);
		close(conn);
		return list;
	}

	

}
