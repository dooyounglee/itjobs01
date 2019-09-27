package com.kh.like.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.like.model.service.LikeService;
import com.kh.member.model.vo.Member;
import com.kh.notification.model.vo.Notification;
import com.kh.resume.model.vo.Resume;

/**
 * Servlet implementation class LikeMyMemberListServlet
 */
@WebServlet("/myResumeList.like")
public class LikeMyResumeListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LikeMyResumeListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession();
		Member mem=(Member)session.getAttribute("mem");
		int m_no=mem.getM_no();
		
		ArrayList<Resume> list=new LikeService().myResumeList(m_no);
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/mypage/likeResumeList.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
