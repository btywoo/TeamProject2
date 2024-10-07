package kr.kh.app.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import kr.kh.app.model.vo.MemberVO;
import kr.kh.app.service.MemberService;
import kr.kh.app.service.MemberServiceImp;

@WebServlet("/mypage/update/pw")
public class MyPageUpdatePw extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MemberService memberService = new MemberServiceImp();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String me_pw = request.getParameter("me_pw");
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");
		
		boolean res = memberService.updateMemberPw(user, me_pw);
		if(res) {
			user.setMe_cookie(null);
			user.setMe_limit(null);
			memberService.updateMemberCookie(user);
			request.getSession().removeAttribute("user");
		}
		JSONObject jobj = new JSONObject();
		jobj.put("res", res);
		response.setContentType("application/json; charset=utf-8");
		response.getWriter().print(jobj);
	}
}