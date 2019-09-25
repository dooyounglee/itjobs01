package com.kh.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Co_Info;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class JoinServlet
 */
@WebServlet("/join.me")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinServlet() {
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
		
		String type=request.getParameter("type");
		String email=request.getParameter("email");
		String pw=request.getParameter("pw");
		String nickname=request.getParameter("nickname");
		
		Member m=new Member();
		m.setType(type);
		m.setEmail(email);
		m.setPw(pw);
		m.setNickname(nickname);
		System.out.println(m);

		int result=new MemberService().insertMember(m);
		if(result>0) {
			if(type.equals("일반")) {
				request.setAttribute("msg", "회운가입 성공");
				request.setAttribute("nickname", nickname);
				request.getRequestDispatcher("views/login/join_ok.jsp").forward(request, response);
			}else{
				Member newm=new MemberService().getMemberByEmail(m.getEmail());
				System.out.println(newm);
				
				String regnum=request.getParameter("regnum");
				String file=request.getParameter("file");
				String path="pathh";
				String name=request.getParameter("name");
				String phone=request.getParameter("phone");
				String address=request.getParameter("address");
				String ceo=request.getParameter("ceo");
				String co_phone=request.getParameter("co_phone");
				String discript=request.getParameter("discript");
				String birth_date=request.getParameter("birth_date");
				int memsum=Integer.parseInt(request.getParameter("memsum"));
				int revenue=Integer.parseInt(request.getParameter("revenue"));
				String history=request.getParameter("history");
				String welfare=request.getParameter("welfare");
				
				Co_Info co=new Co_Info();
				co.setM_no(newm.getM_no());
				co.setRegNum(regnum);
				co.setFile(file);
				co.setPath(path);
				co.setAddress(address);
				co.setBirth_date(birth_date);
				co.setPhone(phone);
				co.setCeo(ceo);
				co.setCo_phone(co_phone);
				co.setDescript(discript);
				co.setMemsum(memsum);
				co.setName(name);
				co.setPhone(co_phone);
				co.setRevenue(revenue);
				co.setHistory(history);
				co.setWelfare(welfare);
				System.out.println(co);
				
				int result1=new MemberService().insertMember(co);
				if(result1>0) {
					request.setAttribute("msg", "회운가입 성공");
					request.setAttribute("nickname", nickname);
					request.getRequestDispatcher("views/login/join_ok.jsp").forward(request, response);
				}else {
					request.setAttribute("msg", "회운가입 실패");
				}
			}
			
			
		}else {
			request.setAttribute("msg", "회운가입 실패");
			request.getRequestDispatcher("views/login/login.jsp").forward(request, response);
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
