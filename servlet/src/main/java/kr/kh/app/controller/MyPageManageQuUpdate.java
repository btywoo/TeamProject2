package kr.kh.app.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import kr.kh.app.model.vo.MemberVO;
import kr.kh.app.model.vo.QuestionVO;
import kr.kh.app.service.MemberService;
import kr.kh.app.service.MemberServiceImp;

@WebServlet("/mypage/manage/qu/update")
public class MyPageManageQuUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MemberService memberService = new MemberServiceImp();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String quNumStr = request.getParameter("qu_num");
		String qu_type = request.getParameter("qu_type");
		String qu_content = request.getParameter("qu_content");
		JSONObject jobj = new JSONObject();
		if(quNumStr != null) {
			int qu_num = Integer.parseInt(quNumStr);
			QuestionVO qu = new QuestionVO(qu_num, qu_type, qu_content);
			MemberVO user = (MemberVO)request.getSession().getAttribute("user");
			boolean res = false; 
			if(user != null && user.getMe_authority().equals("ADMIN")) {
				res = memberService.updateQuestion(qu);
			}
			jobj.put("result", res);
		}
		response.setContentType("application/json; charset=utf-8");
		response.getWriter().print(jobj);
	}
}