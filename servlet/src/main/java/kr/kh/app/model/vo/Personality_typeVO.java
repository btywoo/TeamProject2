package kr.kh.app.model.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Personality_typeVO {
	private String pt_code;
	private String pt_content;
	
	public Personality_typeVO(String pt_code, String pt_content) {
		this.pt_code = pt_code;
		this.pt_content = pt_content;
	}
}