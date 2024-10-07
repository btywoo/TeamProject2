package kr.kh.app.model.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class DiscussionRoomVO {
	private int dr_num;  
	private String dr_topic;
	private int commentCount;
	
	public DiscussionRoomVO(int dr_num, String dr_topic) {
		this.dr_num = dr_num;
		this.dr_topic = dr_topic;
	}

	public DiscussionRoomVO(String dr_topic) {
		this.dr_topic = dr_topic;
	}
}