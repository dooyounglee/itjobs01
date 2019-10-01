package com.kh.board.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.common.MyFileRenamePolicy;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class BoardInsertServlet
 */
@WebServlet("/insert.bo")
public class BoardInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());

		if(ServletFileUpload.isMultipartContent(request)) {
			int maxSize = 10*1024*1024;
			
			String root = request.getSession().getServletContext().getRealPath("resources");
			String savePath = root + "/fileupload_board/"; 
			
			System.out.println(root);
			System.out.println(savePath);
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			ArrayList<String> originFiles = new ArrayList<>();
			ArrayList<String> changeFiles = new ArrayList<>();
			
			Enumeration<String> files = multiRequest.getFileNames();
			
			while(files.hasMoreElements()) {
				String name = files.nextElement();
				
				if(multiRequest.getFilesystemName(name) != null) {
					String originName = multiRequest.getOriginalFileName(name);
					String changeName = multiRequest.getFilesystemName(name);

					originFiles.add(originName);
					changeFiles.add(changeName);
				}
			}
		}
		
//		HttpSession session = request.getSession();
//		int m_no = ((Member)session.getAttribute("mem")).getM_no();
//		String m_noStr = String.valueOf(m_no);
//		String m_no = String.valueOf(((Member)request.getSession().getAttribute("loginUser")).getM_no());
//		
		String head = multiRequest.getParameter("head");
		String title = multiRequest.getParameter("title");
		String contents = multiRequest.getParameter("content");
		String time = multiRequest.getParameter("time");
//	
//		Board b=new Board();
//		b.setM_no(m_no);
//		b.setHead(head);
//		b.setTitle(title);
//		b.setContents(contents);
//		b.setTime(time);
//		
//		ArrayList<Attachment> list = new ArrayList<>();
//		
//		// 전송 역순으로 담기기 때문에 반복문 역으로 수행
//		for(int i=originFiles.size()-1; i>=0; i--) {
//			Attachment at = new Attachment();
//			at.setFilePath(savePath);
//			at.setOriginName(originFiles.get(i));
//			at.setChangeName(changeFiles.get(i));
//			
//			// 대표이미지는 마지막 인덱스
//			if(i == originFiles.size()-1) {
//				at.setFileLevel(1);
//			}else {
//				at.setFileLevel(2);
//			}
//			
//			list.add(at);
//		}
//		
//		
//		
//		
//		int result = new BoardService().insertBoard(b);
//		if(result>0) {
//			int b_no=new BoardService().getLastest();
//			//Board newb=new BoardService().getBoard(b_no);
//			
//			//request.setAttribute("b", newb);
//			//request.getRequestDispatcher("views/board/get.jsp").forward(request, response);
//			response.sendRedirect(request.getContextPath()+"/get.bo?bno="+b_no);
//		}else {
//			
//		}
		
	}

   

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
