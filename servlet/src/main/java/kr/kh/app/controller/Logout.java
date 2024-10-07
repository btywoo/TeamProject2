package kr.kh.app.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.kh.app.model.vo.MemberVO;
import kr.kh.app.service.MemberService;
import kr.kh.app.service.MemberServiceImp;

@WebServlet("/logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MemberService memberService = new MemberServiceImp();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");
		if(user != null) {
			user.setMe_cookie(null);
			user.setMe_limit(null);
			memberService.updateMemberCookie(user);
		}
		
		request.getSession().removeAttribute("user");
		
		request.setAttribute("url", "/");
		request.setAttribute("msg", "로그아웃했습니다.");
		request.getRequestDispatcher("/WEB-INF/views/message.jsp").forward(request, response);
	}
}