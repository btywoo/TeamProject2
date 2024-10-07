package kr.kh.app.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.kh.app.model.vo.CommentVO;
import kr.kh.app.model.vo.DiscussionRoomVO;
import kr.kh.app.model.vo.MemberVO;
import kr.kh.app.service.DiscussionService;
import kr.kh.app.service.DiscussionServiceImp;

@WebServlet("/discussion")
public class Discussion extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DiscussionService discussionService = new DiscussionServiceImp();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<DiscussionRoomVO> drlist = discussionService.getDiscussionList();
		String dr_num = request.getParameter("dr_num");
		DiscussionRoomVO dr = discussionService.getDiscussionRoom(dr_num);
		List<CommentVO> colist =  discussionService.getCommentList(dr);
		request.setAttribute("drlist", drlist);
		request.setAttribute("dr", dr);
		request.setAttribute("colist", colist);
		request.getRequestDispatcher("/WEB-INF/views/discuss/discussionRoom.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dr_num = request.getParameter("dr_num");
		String co_content = request.getParameter("co_content");
		int co_dr_num = Integer.parseInt(dr_num);	
			
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");
		
		CommentVO comment = new CommentVO(co_content, user.getMe_id(), co_dr_num);
		boolean res = discussionService.insertComment(comment);
		if(res) {
			request.setAttribute("msg", "next");
		}else {
			request.setAttribute("msg", "댓글을 추가하지 못했습니다.");
		}
		request.setAttribute("url", "/discussion?dr_num="+dr_num);
		request.getRequestDispatcher("/WEB-INF/views/message.jsp").forward(request, response);
	}
}