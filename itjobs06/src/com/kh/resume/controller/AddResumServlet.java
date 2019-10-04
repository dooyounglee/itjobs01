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
		String career = request.getParameter("career");
		
		String[] work_places = request.getParameterValues("companyName");
		String work_place="";
		if(work_places != null){
			work_place = String.join(",", work_places);
		}
		
		String[] works = request.getParameterValues("workList");
		String work="";
		if(works != null){
			work = String.join(",", works);
		}
		
		String[] work_date1s = request.getParameterValues("workDate1");
		System.out.println(work_date1s.length);
		String[] work_date2s = request.getParameterValues("workDate2");
		System.out.println(work_date2s.length);
		String[] work_dateB = new String[work_date1s.length];
		if(work_dateB != null){
			for(int i=0; i<work_date1s.length; i++){
				work_dateB[i]= work_date1s[i] + "~"+work_date2s[i];
			}
		}
		String work_date="";
		if(work_dateB != null){
			work_date = String.join(",", work_dateB);
		}
		
		String[] certifications = request.getParameterValues("cer_name");
		String certification ="";
		if(certifications != null){
			certification = String.join(",", certifications);
		}
		
		String[] cer_dates = request.getParameterValues("cer_date");
		String cer_date="";
		if(cer_date != null){
			cer_date = String.join(",", cer_dates);
		}
		
		String title = request.getParameter("title");
		String cover_letter= request.getParameter("self");
		String open = request.getParameter("open");
		
		String[] p_languages = request.getParameterValues("p");
		String p_language="";
		if(p_languages != null){
			p_language = String.join(",", p_languages);
		}
		
		String hope_salary = request.getParameter("hope_salary");
		
		HttpSession session = request.getSession();
		Member m=(Member)session.getAttribute("mem");
		int m_no=m.getM_no();
		
		
		String school_final = request.getParameter("school_final");
	
	
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		//왜 name부터 입력하기로??암튼 이걸쓰고..
		//path랑 photo는 sql에 넣어놔서?
		//Resume re = new Resume(name,birth_date,phone,address,email,school,department,school_period,carrer,work_place,work_dateList,work,certification,cer_date,title,cover_letter,open,p_language,hope_salary);
		Resume re = new Resume();
		re.setPhoto("photO");//이렇게 넣을께요. 그래야 나중에 첨부파일 추가하면 여기만 바꾸면 되거든요 ㅎㅎ
		re.setPath("patH");//이거도 마찬가지
		re.setName(name);
		re.setBirth_date(birth_date);
		re.setPhone(phone);
		re.setAddress(address);
		re.setEmail(email);
		re.setSchool(school);
		re.setDepartment(department);
		re.setSchool_period(school_period);
		re.setCareer(career);
		re.setWork_place(work_place);
		re.setWork_date(work_date);
		re.setWork(work);
		re.setCertification(certification);
		re.setCer_date(cer_date);
		re.setTitle(title);
		re.setCover_letter(cover_letter);
		re.setOpen(open);
		//re.setUpdate_date(update_date); //이건 sql에서 sysdate넣으면 되고
		re.setP_language(p_language);
		re.setHope_salary(hope_salary);
		re.setM_no(m_no);
		//re.setCareer_year(career_year); //input만들면 열어둘께
		re.setSchool_final(school_final);
		
		System.out.println(re);
		/*
		 * Resume [resume_no=0, photo=photO, path=patH, name=1,
		 * 		birth_date=2019-10-09, phone=1, address=1, email=1,
		 * 		school=고등학교, department=이과, school_period=2019-10-17~2019-10-15,
		 * 		career=N, work_place=1,, work_date=~, work=1,,
		 * 		certification=1,, cer_date=2019-10-16,,
		 * 		title=많이 일하고 조금 받겠습니다 뽑아주세요, cover_letter=1, open=Y,
		 * 		update_date=null, p_language=자바, hope_salary=회사내규에따름,
		 * 		m_no=1, career_year=0, school_final=null]
		 */
		
		int result = new ResumeService().insertResum(re);
		
		if(result > 0){
			System.out.println("저장성공");
			response.sendRedirect(request.getContextPath()+"/list.re");
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
