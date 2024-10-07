package kr.kh.app.model.vo;

import java.util.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class TestVO {
	private int te_num; 
	private Date te_date; 
	private String te_result; 
	private String te_me_id;
	
	public TestVO(String me_id) {
		this.te_me_id = me_id;
	}
}