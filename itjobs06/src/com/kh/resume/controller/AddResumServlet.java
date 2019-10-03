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
 * Servlet implementation class addResumServlet
 */
@WebServlet("/addResum.re")
public class AddResumServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
        
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddResumServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String birth_date = request.getParameter("birth");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String school = request.getParameter("school");
		String department = request.getParameter("Department");
		String school_period = request.getParameter("school_Date1") +"~"+request.getParameter("school_Date2");
		String carrer = request.getParameter("carrer");
		String[] work_places = request.getParameterValues("companyName");
		String[] works = request.getParameterValues("workList");
		String[] work_date1s = request.getParameterValues("workDate1");
		String[] work_date2s = request.getParameterValues("workDate2");
		String[] certifications = request.getParameterValues("cer_name");
		String[] cer_dates = request.getParameterValues("cer_date");
		String title = request.getParameter("title");
		String cover_letter= request.getParameter("self");
		String open = request.getParameter("public");
		String[] p_languages = request.getParameterValues("p");
		String hope_salary = request.getParameter("hope_salary");
		
		HttpSession session = request.getSession();
		Member m=(Member)session.getAttribute("mem");
		int m_no=m.getM_no();
		
		String final_school = request.getParameter("final_school");
	
	
		String[] work_dateB = new String[work_date1s.length-1];
		if(work_dateB  != null){
			
		for(int i=0; i<work_date1s.length-1; i++){
			work_dateB[i]= work_date1s[i] + "~"+work_date2s[i];
			System.out.println(work_dateB[i]); 
		}
		
	}
		
		
		String work_place="";
		String work="";
		String certification ="";
		String cer_date="";
		String p_language="";
		String work_dateList="";
		
		if(work_dateB != null){
			work_dateList = String.join(",", work_dateB);
		}
		
		if(work_places != null){
			work_place = String.join(",", work_places);
		}
		if(works != null){
			work = String.join(",", works);
		}
		if(work_places != null){
			work_place = String.join(",", work_places);
		}
		if(certifications != null){
			certification = String.join(",", certifications);
		}
		if(p_languages != null){
			p_language = String.join(",", p_languages);
		}
		
		if(cer_date != null){
			cer_date = String.join(",", cer_dates);
		}
		
		Resume re = new Resume(name,birth_date,phone,address,email,school,department,school_period,carrer,work_place,work_dateList,work,certification,cer_date,title,cover_letter,open,p_language,hope_salary,m_no);
		
		int result = new ResumeService().insertResum(re);
		
		if(result > 0){
			System.out.println("저장성공");
			response.sendRedirect(/*request.getContextPath()+*/"list.re");
		}else{
			System.out.println("저장실패");
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
