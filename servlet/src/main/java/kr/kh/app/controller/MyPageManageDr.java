package kr.kh.app.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import kr.kh.app.model.vo.DiscussionRoomVO;
import kr.kh.app.service.MemberService;
import kr.kh.app.service.MemberServiceImp;

@WebServlet("/mypage/manage/dr")
public class MyPageManageDr extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private MemberService memberService = new MemberServiceImp();
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 토론 목록을 가져오기 위한 코드
        List<DiscussionRoomVO> list = memberService.getDiscussionRoomList();
        // JSON으로 변환
        JSONObject jobj = new JSONObject();
		jobj.put("list", list);
		
        response.setContentType("application/json; charset=utf-8");
        response.getWriter().print(jobj);
    }
}