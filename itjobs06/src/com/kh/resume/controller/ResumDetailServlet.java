package com.kh.resume.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.vo.Member;
import com.kh.resume.model.service.ResumeService;
import com.kh.resume.model.vo.Resume;

/**
 * Servlet implementation class resumDetailServlet
 */ 
@WebServlet("/detail.re")
public class ResumDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     /*  
     * @see HttpServlet#HttpServlet()
     */
    public ResumDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*int mno = Integer.parseInt(request.getParameter("mno"));*/
		//int mno = 1;
		//여기서도 session에서 가져오는걸로.
		HttpSession session = request.getSession();
		Member mem=(Member)session.getAttribute("mem");
		int mno=mem.getM_no();
		
		int resume_no = Integer.parseInt(request.getParameter("resume_no"));
		
		Resume re= new ResumeService().selectResumDetail(mno,resume_no);
		
		System.out.println(re);//콘솔창에 찍혔겠네. 아..null
		
		request.setAttribute("re", re);
	
		
		
		request.getRequestDispatcher("views/mypage/resume/resumeDetailView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
