package kr.kh.app.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<< HEAD
import kr.kh.app.model.vo.PerTypeVO;
=======
import kr.kh.app.model.vo.Personality_typeVO;
>>>>>>> main
import kr.kh.app.model.vo.TestVO;
import kr.kh.app.service.TestService;
import kr.kh.app.service.TestServiceImp;

@WebServlet("/test/result")
public class TestResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TestService testService = new TestServiceImp();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String te_num = request.getParameter("te_num");
		TestVO test =  testService.getTestResult(te_num);
		List<Integer> list = testService.getTestResultPercentage(te_num);
		
<<<<<<< HEAD
		PerTypeVO result = testService.selectResult(test);
=======
		Personality_typeVO result = testService.selectResult(test);
>>>>>>> main
		
		request.setAttribute("test", test);
		request.setAttribute("list", list);
		request.setAttribute("result", result);
		request.getRequestDispatcher("/WEB-INF/views/test/result.jsp").forward(request, response);
	}
}