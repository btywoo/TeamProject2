package kr.kh.app.service;

import java.util.List;

import kr.kh.app.model.vo.MemberVO;
<<<<<<< HEAD
import kr.kh.app.model.vo.PerTypeVO;
=======
import kr.kh.app.model.vo.Personality_typeVO;
>>>>>>> main
import kr.kh.app.model.vo.QuestionVO;
import kr.kh.app.model.vo.TestVO;
import kr.kh.app.pagination.Criteria;
import kr.kh.app.pagination.PageMaker;

public interface TestService {
	TestVO createTest(MemberVO user);

	PageMaker getQuestionPageMaker(Criteria cri);

	List<QuestionVO> getQuestionList(Criteria cri);

	void insertQuestionAnswer(String te_num, List<String> namelist, List<String> answerlist, Criteria cri);

	TestVO getTestResult(String te_num);

	List<Integer> getTestResultPercentage(String te_num);

<<<<<<< HEAD
	PerTypeVO selectResult(TestVO test);
=======
	Personality_typeVO selectResult(TestVO test);
>>>>>>> main
}