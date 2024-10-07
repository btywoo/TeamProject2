package kr.kh.app.model.vo;

import java.util.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class MemberVO {
	private String me_id; 
	private String me_pw;
	private String me_email; 
	private int me_fail; 
	private Date me_stopdate; 
	private String me_cookie; 
	private Date me_limit; 
	private String me_authority; 
	private String me_ms_name;

	public MemberVO(String me_id, String me_pw, String me_email) {
		this.me_id = me_id;
		this.me_pw = me_pw;
		this.me_email = me_email;
	}

	public MemberVO(String me_id, String me_pw) {
		this.me_id = me_id;
		this.me_pw = me_pw;
	}
}