package com.kh.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.board.model.service.BoardService;
import com.kh.reply.model.vo.Reply;

/**
 * Servlet implementation class BoardReplyInsertServlet
 */
@WebServlet("/brinsert.bo")
public class BoardReplyInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardReplyInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bId = Integer.parseInt(request.getParameter("bId"));
		int m_no = Integer.parseInt(request.getParameter("m_no"));
		String content = request.getParameter("content");
		
		Reply r = new Reply();
		r.setB_no(bId);
		r.setM_no(m_no);
		r.setContents(content);

		int result = new BoardService().insertReplyBoard(bId, m_no, content);
		
		if(result >  0) {
			response.getWriter().print("success");
		}else {
			response.getWriter().print("fail");
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
