package kr.kh.app.service;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import kr.kh.app.model.vo.DiscussionRoomVO;
import kr.kh.app.model.vo.MemberVO;
import kr.kh.app.model.vo.Personality_typeVO;
import kr.kh.app.model.vo.QuestionVO;
import kr.kh.app.model.vo.TestVO;

public interface MemberService {
	boolean signup(MemberVO member);

	boolean checkId(String me_id);

	String checkUser(MemberVO user);

	Cookie createCookie(MemberVO user, HttpServletRequest request);

	void updateMemberCookie(MemberVO user);

	MemberVO getMemberBySid(String sid);

	MemberVO getMember(MemberVO user);

	boolean updateMemberPw(MemberVO user, String me_pw);

	boolean updateMemberEmail(MemberVO user, String me_email);

	boolean deleteMember(MemberVO user);
	
	List<Personality_typeVO> getPersonality_typeList();

	Personality_typeVO getPersonality_type(String pt_code);

	boolean updatePersonality_type(Personality_typeVO pt);
	
	List<DiscussionRoomVO> getDiscussionRoomList();

	boolean insertDiscussionRoom(String dr_topic);

	boolean deleteDiscussionRoom(int dr_num);
	
	List<QuestionVO> getQuestionList();

	boolean insertQuestion(QuestionVO qu);

	List<QuestionVO> getQuestionListByType(String qu_type);

	boolean deleteQuestion(String qu_num);

	List<TestVO> getTestList(MemberVO user);

	boolean updateQuestion(QuestionVO qu);
}