package kr.co.green.member.model.dto;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberDTO {
	private int m_idx;
	private String m_name;
	private String m_pwd;
	private String m_email;
	private String m_phone;
	private Date m_in_date;
	private String m_type;
	private String m_address;
	private String m_english_name;

	public MemberDTO() {
		super();
	}

}
