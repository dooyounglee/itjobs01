package com.kh.board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.board.model.service.BoardService;
import com.kh.board.model.vo.Board;
import com.kh.board.model.vo.PageInfo;

/**
 * Servlet implementation class BoardListServlet
 */
@WebServlet("/list.bo")
public class BListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String head = request.getParameter("head");
		
		int listCount = 0;
		if(head.equals("main")) {
			listCount = new BoardService().getMainListCount();
		}else {
			switch(head) {
			case "free" : head="자유"; break;
			case "study" : head="스터디"; break;
			case "project" : head="프로젝트"; break;
			case "qna" : head="공지사항"; break;
			case "form" : head="서식"; break;
			case "qu" : head="문의사항"; break;
			}
			listCount = new BoardService().getEtcListCount(head);
		}
		System.out.println(listCount);
		// 페이징처리
		int currentPage = 1;
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int pageLimit; 	
		int boardLimit;	
		int maxPage;
		int startPage;
		int endPage;

		pageLimit = 10;
		boardLimit = 10;


		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		startPage = (currentPage-1)/pageLimit * pageLimit + 1;
		endPage = startPage + pageLimit - 1;
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(currentPage, listCount, pageLimit, maxPage, startPage, endPage, boardLimit);
		
		ArrayList<Board> list = new ArrayList<>();
		if(head.equals("main")) {
			list = new BoardService().selectMainList(pi);
			
		}else {
			list = new BoardService().selectEtcList(head, pi);
		}
		System.out.println(list);
		request.setAttribute("pi",pi);
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("views/board/list.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}