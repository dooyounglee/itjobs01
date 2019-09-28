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
			}
			if(type.equals("기업")) {
			request.getRequestDispatcher("views/login/join_co_info.jsp").forward(request, response);
		
			
			}
		}else {
			request.setAttribute("msg", "회운가입 실패");
			
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
