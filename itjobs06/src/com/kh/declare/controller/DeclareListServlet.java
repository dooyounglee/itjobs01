package com.kh.declare.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.declare.model.service.DeclareService;
import com.kh.declare.model.vo.Declare;

/**
 * Servlet implementation class DeclareListServlet
 */
@WebServlet("/list.de")
public class DeclareListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeclareListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		ArrayList<Declare> blist=new DeclareService().getBoardList();
		ArrayList<Declare> rlist=new DeclareService().getReplyList();
		ArrayList<Declare> nlist=new DeclareService().getNotificationList();
		
		request.setAttribute("blist", blist);
		request.setAttribute("rlist", rlist);
		request.setAttribute("nlist", nlist);
		
		request.getRequestDispatcher("views/admin/declare.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
