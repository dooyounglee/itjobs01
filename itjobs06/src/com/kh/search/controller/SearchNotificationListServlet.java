package com.kh.search.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.notification.model.service.NotificationService;
import com.kh.notification.model.vo.Notification;
import com.kh.search.model.service.SearchService;

/**
 * Servlet implementation class SearchNotificationListServlet
 */
@WebServlet("/notificationList.se")
public class SearchNotificationListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchNotificationListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8");
		
		String sKey=request.getParameter("sKey");
		String sText=request.getParameter("sText");
		
		ArrayList<Notification> list=null;
		if(sKey!=null && sText!=null) {
			//list=new SearchService().searchNotificationList(sKey,sText);
		}else if(sText!=null){
			System.out.println(sText);
			list=new SearchService().getSuperSearchNotification(sText);
		}else {
			list=new NotificationService().getAllNotificationList();
		}
				
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/search/notification.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
