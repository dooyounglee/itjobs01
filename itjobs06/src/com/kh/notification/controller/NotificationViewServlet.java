package com.kh.notification.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.vo.Member;
import com.kh.notification.model.service.NotificationService;
import com.kh.notification.model.vo.Notification;
import com.kh.resume.model.service.ResumeService;
import com.kh.resume.model.vo.Resume;

/**
 * Servlet implementation class NotificationViewServlet
 */
@WebServlet("/get.no")
public class NotificationViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NotificationViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		int noti_no=Integer.parseInt(request.getParameter("noti_no"));
		
		HttpSession session = request.getSession();
		Member m=(Member)session.getAttribute("mem");
		
		Notification noti=new NotificationService().getNotification(noti_no);
		request.setAttribute("noti", noti);
		
		if(m.getType().equals("1")) {
			ArrayList<Resume> rlist=new ResumeService().getMyResumeList(m);
			request.setAttribute("rlist", rlist);
			request.getRequestDispatcher("views/notice/get.jsp").forward(request, response);
		}else if(m.getType().equals("2")) {
			request.getRequestDispatcher("views/mypage/notice/get.jsp").forward(request, response);
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
