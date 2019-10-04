package com.kh.resume.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.board.model.vo.PageInfo;
import com.kh.member.model.vo.Member;
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

	
public int insertResum(Resume re){
		
		Connection conn = getConnection();
		
		int result = new ResumeDao().insertResum(conn,re);
		
		if(result > 0){
			commit(conn);
		}else{
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
	/*public Resum resumDetail(int mno){
		
		int result =0;
		Connection conn = getConnection();
		
		Resum re = null;
		if(result > 0) {
			commit(conn);
			re = new ResumDao().selectResumDetail(conn, mno);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return re;
		
	}*/
	
	/**
	 * 3_1.이력서 총 갯수 조회용 서비스 
	 * @return
	 */
	public int getListCount(int mno) {
		Connection conn = getConnection();
		
		int listCount = new ResumeDao().getListCount(conn,mno);
		
		close(conn);
		
		return listCount;
	}
	
	/**
	 * 3_2. 이력서 리스트 조회용 서비스
	 * @param pi
	 * @return
	 */
	public ArrayList<Resume> selectResume(PageInfo pi,int mno){
		Connection conn = getConnection();
		
		ArrayList<Resume> list = new ResumeDao().selectResume(conn, pi,mno);
		System.out.println(list);
		close(conn);
		
		return list;
		
	}
	
	/**
	 * 4.이력서 상세보기용 서비스
	 * @param mno
	 * @param resume_no
	 * @return
	 */
	public Resume selectResumDetail(int mno,int resume_no){
	
	 Connection conn = getConnection();
		
	 Resume re = new ResumeDao().selectResumDetail(conn, mno, resume_no);
	 
	 if(re != null){ 
		 commit(conn);
	 }else{
		 rollback(conn);
	 }
	  close(conn);
		
	
		
		
		
		
		return re;
		
	}
	
	/**
	 * 5. 이력서 수정 폼용 서비스 
	 * @param resume_no
	 * @return
	 */
	public Resume selectUpdateResum(int resume_no){
		Connection conn = getConnection();
		
		Resume re = new ResumeDao().selectUpdateResum(conn,resume_no);
		
		System.out.println("서비스"+re);
		if(re != null){ 
			 commit(conn);
		 }else{
			 rollback(conn);
		 }
		  close(conn);
		  return re;
	}


	public ArrayList<Resume> getMyResumeList(Member m) {
		Connection conn = getConnection();
		
		ArrayList<Resume> list = new ResumeDao().getMyResumeList(conn, m);
		
		close(conn);
		
		return list;
	}
	
public int deleteResume(int resume_no){
		
		Connection conn = getConnection();
		
		int result = new ResumeDao().deleteResume(conn,resume_no);
		System.out.println(result+" ㅅㅓㅂㅣㅅㅡ");
		if(result > 0){
			commit(conn);
		}else{
			rollback(conn);
		}
		close(conn);
		return result;
		
	}

	public int updateResume(Resume re){
		Connection conn = getConnection();
		
		int result = new ResumeDao().updateResume(conn,re);
		
		if(result >0 ){
			commit(conn);
		}else{
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	
}
