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
	private String m_address;;
	private String m_detailed_address;
	private String m_english_first_name;
	private String m_english_last_name;
	private String m_temporary;
	private String newPassword;
	private String m_code_chk;
	private String m_mileage;

	public MemberDTO() {
		super();
	}

}
