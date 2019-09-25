package com.kh.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.board.model.service.BoardService;
import com.kh.board.model.vo.Board;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class BoardEditServlet
 */
@WebServlet("/edit.bo")
public class BoardEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardEditServlet() {
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
		
		int b_no=Integer.parseInt(request.getParameter("bno"));
		Board b=new BoardService().getBoard(b_no);
		
		request.setAttribute("b", b);
		request.getRequestDispatcher("views/board/edit.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		request.setCharacterEncoding("utf-8");
		
		int b_no=Integer.parseInt(request.getParameter("bno"));
		
		HttpSession session = request.getSession();
		int m_no=((Member)session.getAttribute("mem")).getM_no();
		
		String head=request.getParameter("head");
		String title=request.getParameter("title");
		String contents=request.getParameter("contents");
		String time1=request.getParameter("time1");
		String time2=request.getParameter("time2");
		
		Board b=new Board();
		b.setB_no(b_no);
		b.setM_no(m_no);
		b.setHead(head);
		b.setTitle(title);
		b.setContents(contents);
		b.setTime(time1+"~"+time2);
		
		int result=new BoardService().update(b);
		if(result>0) {
			response.sendRedirect(request.getContextPath()+"/get.bo?bno="+b_no);
		}else {
			
		}
	}

}
