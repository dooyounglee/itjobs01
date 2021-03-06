package com.kh.like.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.board.model.vo.PageInfo;
import com.kh.like.model.service.LikeService;
import com.kh.member.model.vo.Member;
import com.kh.notification.model.service.NotificationService;
import com.kh.notification.model.vo.Notification;

/**
 * Servlet implementation class MyNotificationListServlet
 */
@WebServlet("/myNotificationList.like")
public class LikeMyNotificationListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LikeMyNotificationListServlet() {
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
		
		int currentPage=1;
		if(request.getParameter("currentPage")!=null) {
			currentPage=Integer.parseInt(request.getParameter("currentPage"));
		}
		PageInfo pi = null;
		
		int listCount = new LikeService().myNotificationListCount(m_no);
		pi = new PageInfo(currentPage, listCount, 5, 5);
		
		ArrayList<Notification> list=new LikeService().myNotificationList(m_no,pi);
		request.setAttribute("list", list);
		request.setAttribute("pi", pi);
		request.getRequestDispatcher("views/mypage/likeNotificationList.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
