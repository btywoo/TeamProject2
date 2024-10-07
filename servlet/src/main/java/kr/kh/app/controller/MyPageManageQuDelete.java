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

@WebServlet("/mypage/manage/qu/delete")
public class MyPageManageQuDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MemberService memberService = new MemberServiceImp();

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String qu_num = request.getParameter("qu_num");
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");
		JSONObject jobj = new JSONObject();		
		boolean res = false; 
		if(user != null && user.getMe_authority().equals("ADMIN")) {
			res = memberService.deleteQuestion(qu_num);
		}
		jobj.put("result", res);
		
		response.setContentType("application/json; charset=utf-8");
		response.getWriter().print(jobj);
	}
}