package kr.kh.app.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.fasterxml.jackson.databind.ObjectMapper;

import kr.kh.app.model.vo.Personality_typeVO;
import kr.kh.app.service.MemberService;
import kr.kh.app.service.MemberServiceImp;

@WebServlet("/mypage/manage/pt")
public class MyPageManagePt extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private MemberService memberService = new MemberServiceImp();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pt_code = request.getParameter("pt_code");
		Personality_typeVO pt = memberService.getPersonality_type(pt_code);
		JSONObject jobj = new JSONObject();
		ObjectMapper om = new ObjectMapper();
		
		jobj.put("pt", om.writeValueAsString(pt));
		response.setContentType("application/json; charset=utf-8");
		response.getWriter().print(jobj);
	}
}