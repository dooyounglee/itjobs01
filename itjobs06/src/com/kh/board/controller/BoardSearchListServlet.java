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
 * Servlet implementation class BoardSearchListServlet
 */
@WebServlet("/searchList.bo")
public class BoardSearchListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardSearchListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String select = request.getParameter("select");
		String search = request.getParameter("search");
		String head = request.getParameter("head");
		
		ArrayList<Board> list = new ArrayList<>();
		int listCount = 0;
		
		if(head.equals("전체보기")) {
			list = new BoardService().msearchBoard(select, search);
			listCount = list.size();
		}else {
			list = new BoardService().esearchBoard(head, select, search);
			listCount = list.size();
		}
		
		int currentPage=1;
		if(request.getParameter("currentPage")!=null) {
			currentPage=Integer.parseInt(request.getParameter("currentPage"));
		}
		
		
		PageInfo pi = new PageInfo(currentPage, listCount, 5, 5);
		
	
		if(head.equals("main")||head.equals("전체보기")) {
			list = new BoardService().selectMainList(pi);
			
		}else {
			list = new BoardService().selectEtcList(head, pi);
		}
	
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
