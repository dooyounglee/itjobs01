package com.kh.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.service.MemberService;
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
		String nickname=request.getParameter("nickName");
		if(type.equals("2")) {
			nickname = request.getParameter("nickName")+"(기업)";
		}
		
		
		Member m=new Member();
		m.setType(type);
		m.setEmail(email);
		m.setPw(pw);
		m.setNickname(nickname);
		
		int result=new MemberService().insertMember(m);
		
		if(result>0) {
//			System.out.println(type);
			HttpSession session = request.getSession();
			if(type.equals("1")) {
				
				session.setAttribute("alert", "회원가입을 환영합니다.로그인을 진행해 주세요");
				request.setAttribute("nickname", nickname);
				
				request.getRequestDispatcher("views/login/login.jsp").forward(request, response);
			
				
			}else {
				request.setAttribute("msg", "회운가입 실패(일반)");
			
			}
			
			
			if(type.equals("2")) {
				
				
				request.setAttribute("m", m);
				request.getRequestDispatcher("views/login/join_co_info.jsp").forward(request, response);
			}else {
				request.setAttribute("msg", "회운가입 실패(기업)");
			}
		}else {
			request.setAttribute("msg", "회운가입 실패(공통)");
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
