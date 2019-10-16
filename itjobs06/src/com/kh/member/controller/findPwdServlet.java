package com.kh.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.common.sendEmail;
import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class findPwd
 */
@WebServlet("/findpwd.me")

public class findPwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public findPwdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("static-access")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		
		
		String email = request.getParameter("email"); 
		
		Member mem = new MemberService().findPwd(email); //유저의 이메일을 조회해오고
		
		if(mem != null) {	// 존재하면
			
			String userPwd = mem.getPw(); // 유저 비밀번호를 받고
			
			int pwRandom = (int)(Math.random()*1000+1); // 임시로 난수를 발생시킨 숫자를 변수에 담아
			
			userPwd =  Integer.toString(pwRandom); // 유저의 비밀번호에 난수의 숫자를 담고
			
			
			int result = new MemberService().randomPwd(userPwd,email); // 보내준다
			
			if(result>0) {	// 정상적으로 비밀번호 변경 이메일에 임시 비밀번호 전송
				
				new sendEmail().sendPwd(email,userPwd);
				
				request.setAttribute("findResult", "임시 비밀번호를 발송하였습니다. 로그인을 진행해 주세요");
				request.setAttribute("MemEmail", email);
				request.getRequestDispatcher("views/login/login.jsp").forward(request, response);
			}else {
				//이메일 발송 실패
			}
			
			
			
		}else {
			// 존재하지 않는 회원
			request.setAttribute("findResult", "존재하지 않는 회원입니다.");
			request.getRequestDispatcher("views/login/find.jsp").forward(request, response);
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
