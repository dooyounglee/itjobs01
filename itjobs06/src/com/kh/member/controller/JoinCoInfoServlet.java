package com.kh.member.controller;

import java.io.File;
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
import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Co_Info;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class JoinCoInfoServlet
 */
@WebServlet("/coinfo.me")
public class JoinCoInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinCoInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		request.setCharacterEncoding("utf-8");
		
		if(ServletFileUpload.isMultipartContent(request)) {

			
			
			int maxSize = 10*1024*1024;
			
			String root = request.getSession().getServletContext().getRealPath("/resources");
					
			String savePath = root + "/cofileupload/";
			
			MultipartRequest multiRequest = new MultipartRequest(request,savePath,maxSize,"UTF-8", new MyFileRenamePolicy());
			
			String fileName = new String();
			
			Enumeration<String>files = multiRequest.getFileNames();
			
			while(files.hasMoreElements()) {
				
				String name = files.nextElement();
				
				if(multiRequest.getFilesystemName(name) != null) {
					
					String fileName1 = multiRequest.getFilesystemName(name);
					
					fileName = fileName1;
				}
			}
		
			
		
		String email = multiRequest.getParameter("email");
		String regnum = multiRequest.getParameter("regnum");
		String file = fileName;
//		String path = multiRequest.getParameter("path");
		String name = multiRequest.getParameter("name");
		String phone = multiRequest.getParameter("phone");
//		String address = multiRequest.getParameter("address");
		
		String postcode=multiRequest.getParameter("sample3_postcode");
		String address_=multiRequest.getParameter("sample3_address");
		String detailAddress=multiRequest.getParameter("sample3_detailAddress");
		String address=postcode+"+"+address_+"+"+detailAddress;
		
		String ceo = multiRequest.getParameter("ceo");
		String co_phone = multiRequest.getParameter("co_phone");
		String descript = multiRequest.getParameter("descript");
		String birth_date = multiRequest.getParameter("birth_date");
		int memsum = Integer.parseInt(multiRequest.getParameter("memsum"));
		int revenue = Integer.parseInt(multiRequest.getParameter("revenue"));
		String history = multiRequest.getParameter("history");
		String welfair = multiRequest.getParameter("welfair");
		
		
		
		Co_Info cf = new Co_Info();
		
		new MemberDao().emailCheck(email);
		
		cf.setRegNum(regnum);
		cf.setFile(file);
		cf.setPath(savePath);
		cf.setName(name);
		cf.setPhone(phone);
		cf.setAddress(address);
		cf.setCeo(ceo);
		cf.setCo_phone(co_phone);
		cf.setDescript(descript);
		cf.setBirth_date(birth_date);
		cf.setMemsum(memsum);
		cf.setRevenue(revenue);
		cf.setHistory(history);
		cf.setWelfare(welfair);
		
		
		int result = new MemberService().JoinCoInfo(cf,email);
		
		
		
		if(result>0) {
			HttpSession session = request.getSession();
			session.setAttribute("alert", "회원가입을 환영합니다. 승인절차는 1~2일정도 소요되며 결과는 문자,이메일로 발송해 드립니다.");
			
			request.setAttribute("cf",cf);
			response.sendRedirect(request.getContextPath());
		}else {
			
			File faildFile = new File(savePath+fileName);
			faildFile.delete();
			request.setAttribute("msg", "회운가입 실패(기업2)");
			
		
		}
		
		
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
