package kr.kh.app.model.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class PerTypeVO {
	private String pt_code; 
	private String pt_content;
	
	public PerTypeVO(String te_result) {
		this.pt_code = te_result;
	}
	
}