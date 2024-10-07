package kr.kh.app.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.kh.app.model.vo.DiscussionRoomVO;
import kr.kh.app.model.vo.MemberVO;
import kr.kh.app.model.vo.Personality_typeVO;
import kr.kh.app.model.vo.QuestionVO;
import kr.kh.app.model.vo.TestVO;

public interface MemberDAO {
	boolean insertMember(@Param("me")MemberVO member);

	MemberVO selectMember(@Param("me_id")String me_id);

	void updateMemberCookie(@Param("user")MemberVO user);

	MemberVO selectMemberBySid(@Param("sid")String sid);

	void updateMemberFail(@Param("user")MemberVO user2, @Param("i")int i);

	void updateMemberStop(@Param("user")MemberVO user2);

	boolean updateMemberPw(@Param("user")MemberVO user, @Param("me_pw")String me_pw);

	boolean updateMemberEmail(@Param("user")MemberVO user, @Param("me_email")String me_email);

	boolean deleteMember(@Param("user")MemberVO user);
	
	List<Personality_typeVO> selectPersonality_typeList();

	Personality_typeVO selectPersonality_type(@Param("pt_code")String pt_code);

	boolean updatePersonality_type(@Param("pt")Personality_typeVO pt);

	List<DiscussionRoomVO> selectDiscussionRoomList();

	boolean insertDiscussionRoom(@Param("dr")DiscussionRoomVO discussionRoom);

	boolean deleteDiscussionRoom(@Param("dr_num")int dr_num);
	
	List<QuestionVO> selectQuestionList();

	boolean insertQuestion(@Param("qu")QuestionVO qu);

	List<QuestionVO> selectQuestionListByType(@Param("qu_type")String qu_type);

	boolean deleteQuestion(@Param("qu_num")String qu_num);

	List<TestVO> selectTestList(@Param("user")MemberVO user);

	boolean updateQuestion(@Param("qu")QuestionVO qu);
}