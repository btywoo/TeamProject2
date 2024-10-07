package kr.kh.app.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.kh.app.model.vo.CommentVO;
import kr.kh.app.service.DiscussionService;
import kr.kh.app.service.DiscussionServiceImp;

@WebServlet("/discussion/comment/delete")
public class DiscussionCommentDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DiscussionService discussionService = new DiscussionServiceImp();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dr_num = request.getParameter("dr_num");
		String co_num = request.getParameter("co_num");
		CommentVO comment = new CommentVO(Integer.parseInt(co_num));
		boolean res = discussionService.deleteComment(comment);
		if(res) {
			request.setAttribute("msg", "next");
		}else {
			request.setAttribute("msg", "댓글을 삭제하지 못했습니다.");
		}
		request.setAttribute("url", "/discussion?dr_num="+dr_num);
		request.getRequestDispatcher("/WEB-INF/views/message.jsp").forward(request, response);
	}
}