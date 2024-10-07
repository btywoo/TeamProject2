package kr.kh.app.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.kh.app.model.vo.CommentVO;
import kr.kh.app.model.vo.DiscussionRoomVO;

public interface DiscussionDAO {
	List<DiscussionRoomVO> selectDiscussionList();

	boolean insertComment(@Param("co")CommentVO comment);

	DiscussionRoomVO selectDiscussionRoom(@Param("dr_num")int dr_num);

	List<CommentVO> selectCommentList(@Param("dr")DiscussionRoomVO dr);

	boolean deleteComment(@Param("co")CommentVO comment);
}