package kr.kh.app.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.kh.app.model.vo.MemberVO;
import kr.kh.app.model.vo.Personality_typeVO;
import kr.kh.app.model.vo.QuestionVO;
import kr.kh.app.model.vo.TestVO;
import kr.kh.app.service.MemberService;
import kr.kh.app.service.MemberServiceImp;

@WebServlet("/mypage")
public class MyPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MemberService memberService = new MemberServiceImp();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");
		List<TestVO> testList = memberService.getTestList(user);
		
		if(user != null && user.getMe_authority().equals("ADMIN")) {
			List<Personality_typeVO> ptList = memberService.getPersonality_typeList();
			List<QuestionVO> quList = memberService.getQuestionList();
			request.setAttribute("quList", quList);
			request.setAttribute("ptList", ptList);
		}
		request.setAttribute("testList", testList);
		request.getRequestDispatcher("/WEB-INF/views/member/mypage.jsp").forward(request, response);
	}
}