package kr.kh.app.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import kr.kh.app.service.MemberService;
import kr.kh.app.service.MemberServiceImp;

@WebServlet("/mypage/manage/dr/delete")
public class MyPageManageDrDelete extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private MemberService memberService = new MemberServiceImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String drNumStr = request.getParameter("dr_num");
        boolean res = false;
        if(drNumStr != null) {
        	int dr_num = Integer.parseInt(drNumStr);
        	res = memberService.deleteDiscussionRoom(dr_num);
        }
        JSONObject jobj = new JSONObject();
        jobj.put("result", res);
        
        response.setContentType("application/json; charset=utf-8");
        response.getWriter().print(jobj);
    }
}