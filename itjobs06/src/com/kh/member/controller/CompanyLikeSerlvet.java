package com.kh.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.member.model.service.MemberService;

/**
 * Servlet implementation class CompanyLikeSerlvet
 */
@WebServlet("/like.co")
public class CompanyLikeSerlvet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompanyLikeSerlvet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int likeCo = Integer.parseInt(request.getParameter("coNo"));
		
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		
		System.out.println(likeCo);
		System.out.println(memNo);
		
		int result = new MemberService().MemLikeCheck(likeCo,memNo);
		
//		System.out.println(result);
		
		PrintWriter out = response.getWriter();
		
		if(result==0) {
			out.print(0);
		}else {
			out.print(1);
		}
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
