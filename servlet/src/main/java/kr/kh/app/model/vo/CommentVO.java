package kr.kh.app.model.vo;

import java.util.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class CommentVO {
	private int co_num;
	private Date co_date;
	private String co_content;
	private String co_me_id;
	private int co_dr_num;
	private String co_te_result;
	
	public CommentVO(String co_content, String co_me_id, int co_dr_num) {
		this.co_content = co_content;
		this.co_me_id = co_me_id;
		this.co_dr_num = co_dr_num;
	}

	public CommentVO(int co_num) {
		this.co_num = co_num;
	}
}
