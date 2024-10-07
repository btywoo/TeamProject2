package kr.kh.app.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.kh.app.model.vo.MemberVO;
import kr.kh.app.service.MemberService;
import kr.kh.app.service.MemberServiceImp;

@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MemberService memberService = new MemberServiceImp();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//로그인 페이지로 오기 전 URL을 가져옴
		String url = request.getHeader("Referer");
		//URL이 있거나 /login이 아니면 세션에 URL을 저장
		if(url != null && !url.contains("/login") && !url.contains("/signup") && !url.contains("/logout")) {
			request.getSession().setAttribute("prevUrl", url);
		}
		request.getRequestDispatcher("/WEB-INF/views/member/login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String me_id = request.getParameter("me_id");
		String me_pw = request.getParameter("me_pw");
		MemberVO user = new MemberVO(me_id, me_pw);
		
		String res = memberService.checkUser(user);
		if(!res.equals("")) {
			request.setAttribute("url", "/login");
			request.setAttribute("msg", res);
		}else {
			user = memberService.getMember(user);
			request.getSession().setAttribute("user", user);
			request.setAttribute("url", "/");
			request.setAttribute("msg", "로그인을 하였습니다.");
			String auto = request.getParameter("auto");
			if(auto != null && auto.equals("on")) {
				//쿠키를 생성하고 DB에 쿠키와 만료시간을 저장
				Cookie cookie = memberService.createCookie(user, request);
				response.addCookie(cookie);
			}
		}
		request.getRequestDispatcher("/WEB-INF/views/message.jsp").forward(request, response);
	}
}