package kr.kh.app.model.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class QuestionVO {
	private int qu_num; 
	private String qu_content; 
	private String qu_type;
	private int qu_answerCount;
	
	public QuestionVO(String qu_type, String qu_content) {
		this.qu_content = qu_content;
		this.qu_type = qu_type;
	}

	public QuestionVO(int qu_num, String qu_type, String qu_content) {
		this.qu_num = qu_num;
		this.qu_content = qu_content;
		this.qu_type = qu_type;
	}
}