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

@WebServlet("/mypage/update/email")
public class MyPageUpdateEmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MemberService memberService = new MemberServiceImp();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String me_email = request.getParameter("me_email");
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");
		
		boolean res = memberService.updateMemberEmail(user, me_email);
		if(res) {
			user.setMe_email(me_email);
			request.getSession().removeAttribute("user");
			request.getSession().setAttribute("user", user);
		}
		JSONObject jobj = new JSONObject();
		jobj.put("res", res);
		response.setContentType("application/json; charset=utf-8");
		response.getWriter().print(jobj);
	}
}