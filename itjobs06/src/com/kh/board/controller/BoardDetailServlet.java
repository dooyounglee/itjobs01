package com.kh.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.board.model.service.BoardService;
import com.kh.board.model.vo.Board;

/**
 * Servlet implementation class BoardDetailServlet
 */
@WebServlet("/detail.bo")
public class BoardDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bId = Integer.parseInt(request.getParameter("bId"));
		String head = request.getParameter("head");
		
		switch(head) {
		case "free" : head="자유"; break;
		case "study" : head="스터디"; break;
		case "project" : head="프로젝트"; break;
		case "qna" : head="공지사항"; break;
		case "form" : head="서식"; break;
		case "qu" : head="문의사항"; break;
		}
		
		Board b = new BoardService().selectBoard(bId);
		
		if(b == null) {
			request.setAttribute("msg", "조회실패");
		}else {
			
			Board prev = new BoardService().prevBoard(bId, head);
			Board next = new BoardService().nextBoard(bId, head);
			
		request.setAttribute("prev", prev);
		request.setAttribute("next", next);
		request.setAttribute("b", b);
		request.getRequestDispatcher("views/board/detail.jsp").forward(request, response);
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
