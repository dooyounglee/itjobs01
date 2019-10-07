package com.kh.resume.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.common.MyFileRenamePolicy;
import com.kh.member.model.vo.Member;
import com.kh.resume.model.service.ResumeService;
import com.kh.resume.model.vo.Resume;
import com.oreilly.servlet.MultipartRequest;
 
/**
 * Servlet implementation class ResumeUpdateServlet
 */
@WebServlet("/update.re")
public class ResumeUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResumeUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		int resume_no = Integer.parseInt(request.getParameter("resume_no"));
		
		Resume re = new ResumeService().selectUpdateResum(resume_no);
		if(re != null) {
			request.setAttribute("re", re);
			request.getRequestDispatcher("views/mypage/resume/resumeUpdateView.jsp").forward(request, response);
		}else {
			System.out.print("수정실패");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		if(ServletFileUpload.isMultipartContent(request)) {
			
			int maxSize=10*1024*1024;
			String root = request.getSession().getServletContext().getRealPath("/resources");
			String savePath = root + "/fileupload_resumeImg/";
	
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
	
			Enumeration<String> files = multiRequest.getFileNames();
			
			String path=multiRequest.getParameter("path");
			String photo=multiRequest.getParameter("photo");
			
			while(files.hasMoreElements()) {
				String nameF = files.nextElement();
				
				if(multiRequest.getFilesystemName(nameF) != null) {
					photo = multiRequest.getFilesystemName(nameF);
				}
			}
			
			int resume_no=Integer.parseInt(multiRequest.getParameter("resume_no"));
			String name = multiRequest.getParameter("name");
			String birth_date = multiRequest.getParameter("birth");
			String phone = multiRequest.getParameter("phone");
			
			String postcode=multiRequest.getParameter("sample3_postcode");
			String address_=multiRequest.getParameter("sample3_address");
			String detailAddress=multiRequest.getParameter("sample3_detailAddress");
			String address=postcode+"+"+address_+"+"+detailAddress;
			
			String email = multiRequest.getParameter("email");
			
			String school_final = multiRequest.getParameter("school_final");
			
			String school = String.join(",", multiRequest.getParameterValues("school"));
			String department = String.join(",", multiRequest.getParameterValues("Department"));
			String school_period = String.join(",",multiRequest.getParameterValues("school_Date1"))+"~"+String.join(",",multiRequest.getParameterValues("school_Date2"));
			
			String career = multiRequest.getParameter("career");
			String work_place="";
			String work="";
			String work_date="";
			if(career.equals("Y")) {
				String[] work_places = multiRequest.getParameterValues("companyName");
				work_place = String.join(",", work_places);
				
				String[] works = multiRequest.getParameterValues("workList");
				work = String.join(",", works);
				
				String[] work_date1s = multiRequest.getParameterValues("workDate1");
				String[] work_date2s = multiRequest.getParameterValues("workDate2");
				String[] work_dateB = new String[work_date1s.length];
				for(int i=0; i<work_date1s.length; i++){
					work_dateB[i]= work_date1s[i] + "~"+work_date2s[i];
				}
				work_date = String.join(",", work_dateB);
			}
			
			
			String[] certifications = multiRequest.getParameterValues("cer_name");
			String certification ="";
			certification = String.join(",", certifications);
			
			String[] cer_dates = multiRequest.getParameterValues("cer_date");
			String cer_date="";
			cer_date = String.join(",", cer_dates);
			
			String title = multiRequest.getParameter("title");
			String cover_letter= multiRequest.getParameter("self");
			String open = multiRequest.getParameter("open");
			
			String[] p_languages = multiRequest.getParameterValues("p");
			String p_language="";
			p_language = String.join(",", p_languages);
			
			String hope_salary = multiRequest.getParameter("hope_salary");
			
			/*HttpSession session = request.getSession();
			Member m=(Member)session.getAttribute("mem");
			int m_no=m.getM_no();*/
		
			Resume re = new Resume();
			re.setResume_no(resume_no);
			re.setPhoto(photo);
			re.setPath(savePath);
			re.setName(name);
			re.setBirth_date(birth_date);
			re.setPhone(phone);
			re.setAddress(address);
			re.setEmail(email);
			re.setSchool_final(school_final);
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
			//re.setUpdate_date(update_date);
			re.setP_language(p_language);
			re.setHope_salary(hope_salary);
			//re.setCareer_year(career_year);
			re.setSchool_final(school_final);
			System.out.println("여기"+re);
			
			int result = new ResumeService().updateResume(re);
			if(result > 0){
				response.sendRedirect("list.re");
			}else{
				System.out.println("이력서 수정 실패");
			}
		}
	}

}
