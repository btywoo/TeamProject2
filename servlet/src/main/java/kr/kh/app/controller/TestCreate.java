package kr.kh.app.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import kr.kh.app.model.vo.MemberVO;
import kr.kh.app.model.vo.TestVO;
import kr.kh.app.service.TestService;
import kr.kh.app.service.TestServiceImp;

@WebServlet("/test/create")
public class TestCreate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TestService testService = new TestServiceImp();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");
		TestVO test = testService.createTest(user);

		JSONObject jobj = new JSONObject();
		if(test != null) {
			jobj.put("te_num", test.getTe_num());
		}
		
		response.setContentType("application/json; charset=utf-8");
		response.getWriter().print(jobj);
	}
}