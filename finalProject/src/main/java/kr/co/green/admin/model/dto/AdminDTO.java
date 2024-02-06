package kr.co.green.admin.model.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class AdminDTO {
	private int cd_idx;
	private String cd_color;
	private String cd_approve;
	private String cd_design;
	private int m_idx;
	private String m_name;
	private String m_email;
	private String m_address;
	private String m_english_name;
	private String m_phone;
}
