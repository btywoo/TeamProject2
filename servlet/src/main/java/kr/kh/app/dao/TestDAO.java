package kr.kh.app.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

<<<<<<< HEAD
import kr.kh.app.model.vo.MemberVO;
import kr.kh.app.model.vo.PerTypeVO;
=======
import kr.kh.app.model.vo.Personality_typeVO;
>>>>>>> main
import kr.kh.app.model.vo.QuestionVO;
import kr.kh.app.model.vo.TestVO;
import kr.kh.app.pagination.Criteria;

public interface TestDAO {
	void insertTest(@Param("te")TestVO test);

	int selectQuestionTotalCount();

	List<QuestionVO> selectQuestionList(@Param("cri")Criteria cri);

	void insertQuestionAnswer(@Param("qa_answer")int qa_answer, @Param("qa_te_num")int qa_te_num, @Param("qa_qu_num")int qa_qu_num);

	int selectQuestionAnswerSum(@Param("qa_te_num")int qa_te_num, @Param("qu_type")String qu_type);

	TestVO selectTest(@Param("te_num")int te_num);

	void updateTestResult(@Param("te")TestVO test);

<<<<<<< HEAD
	PerTypeVO selectResult(@Param("test")TestVO test);
=======
	Personality_typeVO selectResult(@Param("te")TestVO test);
>>>>>>> main
}