package kr.kh.app.service;

import java.util.List;

import kr.kh.app.model.vo.CommentVO;
import kr.kh.app.model.vo.DiscussionRoomVO;

public interface DiscussionService {
	List<DiscussionRoomVO> getDiscussionList();

	boolean insertComment(CommentVO comment);

	DiscussionRoomVO getDiscussionRoom(String dr_num);

	List<CommentVO> getCommentList(DiscussionRoomVO dr);

	boolean deleteComment(CommentVO comment);
}