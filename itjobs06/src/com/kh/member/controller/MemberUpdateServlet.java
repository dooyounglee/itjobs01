package com.kh.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Co_Info;
import com.kh.member.model.vo.Member;

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
		
		String nickname=request.getParameter("nickname");
		m.setNickname(nickname);
		
		int result=0;
		if(m.getType().equals("일반")) {
			result=new MemberService().update(m);
		}else if(m.getType().equals("기업")) {
			String regNum=request.getParameter("regnum");
			String ceo=request.getParameter("ceo");
			String name=request.getParameter("name");
			String phone=request.getParameter("phone");
			String descript=request.getParameter("descript");
			String co_phone=request.getParameter("co_phone");
			String birth_date=request.getParameter("birth_date");
			int memsum=Integer.parseInt(request.getParameter("memsum"));
			int revenue=Integer.parseInt(request.getParameter("revenue"));
			String address=request.getParameter("address");
			String history=request.getParameter("history");
			String welfare=request.getParameter("welfare");
			
			Co_Info co=new Co_Info();
			co.setM_no(m.getM_no());
			co.setRegNum(regNum);
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
			
			result=new MemberService().update(m,co);
		}
		
		if(result>0) {
			Member newm=new MemberService().getMemberByEmail(m.getEmail());
			session.setAttribute("mem", newm);
			response.sendRedirect(request.getContextPath()+"/myInfo.me");
		}else {
			
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
