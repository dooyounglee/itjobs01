package com.kh.search.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.resume.model.service.ResumeService;
import com.kh.resume.model.vo.Resume;

/**
 * Servlet implementation class SearchResumeListServlet
 */
@WebServlet("/resumeList.se")
public class SearchResumeListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchResumeListServlet() {
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
		
		ArrayList<Resume> list=null;
		if(sKey!=null) {
			list=new ResumeService().getOpenResumeList(sKey,sText);
		}else if(sText!=null){
			System.out.println(sText);
			list=new ResumeService().getSuperSearchResume(sText);
		}else {
			list=new ResumeService().getOpenResumeList(sKey,sText);
		}
			
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/search/resume.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
