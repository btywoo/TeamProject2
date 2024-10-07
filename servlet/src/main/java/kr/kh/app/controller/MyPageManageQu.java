package kr.kh.app.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import kr.kh.app.model.vo.QuestionVO;
import kr.kh.app.service.MemberService;
import kr.kh.app.service.MemberServiceImp;

@WebServlet("/mypage/manage/qu")
public class MyPageManageQu extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private MemberService memberService = new MemberServiceImp();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String qu_type = request.getParameter("qu_type");
		List<QuestionVO> quList	= memberService.getQuestionListByType(qu_type);
		JSONObject jobj = new JSONObject();
		
		jobj.put("quList", quList);
		response.setContentType("application/json; charset=utf-8");
		response.getWriter().print(jobj);
	}
}