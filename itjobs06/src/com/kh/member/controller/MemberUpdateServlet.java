package com.kh.member.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.common.MyFileRenamePolicy;
import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Co_Info;
import com.kh.member.model.vo.Member;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class MemberUpdateServlet
 */
@WebServlet("/update.me")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberUpdateServlet() {
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
		
		HttpSession session = request.getSession();
		Member m=(Member)session.getAttribute("mem");
		
		if(m.getType().equals("1")) {
			String nickname=request.getParameter("nickname");
			m.setNickname(nickname);
			int result=new MemberService().update(m);
		} else if(m.getType().equals("2")) {
			if(ServletFileUpload.isMultipartContent(request)) {
				int maxSize=10*1024*1024;
				String root = request.getSession().getServletContext().getRealPath("/resources");
				String savePath = root + "/fileupload_company/";
		
				MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
		
				ArrayList<String> changeName = new ArrayList<>();
				ArrayList<String> pathName=new ArrayList<>();
/*				changeName[0]=multiRequest.getParameter("file1");
				pathName[0]=multiRequest.getParameter("path1");
				changeName[1]=multiRequest.getParameter("file2");
				pathName[1]=multiRequest.getParameter("path2");*/
				
				Enumeration<String> files = multiRequest.getFileNames();
				
				while(files.hasMoreElements()) {
					String nameF = files.nextElement();
					if(multiRequest.getFilesystemName(nameF) != null) {
						changeName.add(multiRequest.getFilesystemName(nameF));
					}
				}
				
				System.out.println(changeName);
				
				String nickname=multiRequest.getParameter("nickname");
				m.setNickname(nickname);
				int result=new MemberService().update(m);
				
				String regNum=multiRequest.getParameter("regnum");
				String ceo=multiRequest.getParameter("ceo");
				String name=multiRequest.getParameter("name");
				String phone=multiRequest.getParameter("phone");
				String descript=multiRequest.getParameter("descript");
				String co_phone=multiRequest.getParameter("co_phone");
				String birth_date=multiRequest.getParameter("birth_date");
				int memsum=Integer.parseInt(multiRequest.getParameter("memsum"));
				int revenue=Integer.parseInt(multiRequest.getParameter("revenue"));
				
				String postcode=multiRequest.getParameter("sample3_postcode");
				String address_=multiRequest.getParameter("sample3_address");
				String detailAddress=multiRequest.getParameter("sample3_detailAddress");
				String address=postcode+"+"+address_+"+"+detailAddress;
				
				String history=multiRequest.getParameter("history");
				String welfare=multiRequest.getParameter("welfare");
				
				Co_Info co=new Co_Info();
				co.setM_no(m.getM_no());
				co.setRegNum(regNum);
				//co.setFile(changeName[0]);
				//co.setPath(pathName[0]);
				co.setName(name);
				co.setPhone(phone);
				co.setDescript(descript);
				co.setAddress(address);
				co.setBirth_date(birth_date);
				co.setCeo(ceo);
				co.setCo_phone(co_phone);
				co.setMemsum(memsum);
				co.setRevenue(revenue);
				co.setAddress(address);
				co.setHistory(history);
				co.setWelfare(welfare);
				//co.setLogofile(changeName[1]);
				//co.setLogofile(pathName[1]);
				System.out.println(co);
				//result=new MemberService().update(m,co);
			}
		}
/*		
		if(result>2) {
			Member newm=new MemberService().getMemberByEmail(m.getEmail());
			session.setAttribute("mem", newm);
			response.sendRedirect(request.getContextPath()+"/myInfo.me");
		}else {
			
		}*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
