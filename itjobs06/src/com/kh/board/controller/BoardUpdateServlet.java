package com.kh.board.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.board.model.service.BoardService;
import com.kh.board.model.vo.Board;
import com.kh.common.MyFileRenamePolicy;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class BoardUpdateServlet
 */
@WebServlet("/update.bo")
public class BoardUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(ServletFileUpload.isMultipartContent(request)) {
			int maxSize = 10*1024*1024;
			String root = request.getSession().getServletContext().getRealPath("/resources");
			String savePath = root + "/fileupload_board/"; 
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			String originName  = new String();
			String changeName = new String();
			
			Enumeration<String> files = multiRequest.getFileNames();
			
			while(files.hasMoreElements()) {
				String name = files.nextElement();
				
				if(multiRequest.getFilesystemName(name) != null) {
					originName = multiRequest.getOriginalFileName(name);
					changeName = multiRequest.getFilesystemName(name);

				}
			}
		
		
	//		HttpSession session = request.getSession();
	//		int m_no = ((Member)session.getAttribute("mem")).getM_no();
	//		String m_noStr = String.valueOf(m_no);
	//		String m_no = String.valueOf(((Member)request.getSession().getAttribute("loginUser")).getM_no());
			
			int b_no = Integer.parseInt(multiRequest.getParameter("b_no"));
			int m_no = Integer.parseInt(multiRequest.getParameter("m_no"));
			String strB_no = multiRequest.getParameter("b_no");
		
			String head = multiRequest.getParameter("writehead");
			String title = multiRequest.getParameter("title");
			String contents = multiRequest.getParameter("content");
			String time = multiRequest.getParameter("time");
		
			Board b = new Board();
			b.setB_no(b_no);
			b.setM_no(m_no);
			b.setHead(head);
			b.setTitle(title);
			b.setContents(contents);
			b.setTime(time);
			b.setFile(originName);
			b.setEditFile(changeName);
			b.setPath(savePath);
			
		
			int result = new BoardService().updateBoard(b);
			
			if(result > 0) {
				String afterHead = new BoardService().selectHead(b_no);
				System.out.println("업댓서블릿헤드 " + afterHead);
				System.out.println("업댓서블릿비넘 " + strB_no);
				request.setAttribute("head", afterHead);
				request.setAttribute("bId", strB_no);
				request.getRequestDispatcher("detail.bo").forward(request, response);
			}else {
				request.setAttribute("msg", "게시글 등록 실패");
				request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
			}
		
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
