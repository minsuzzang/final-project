package kr.co.green.card.model.dto;

import java.time.LocalDate;


import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CardDTO {
	
	private int cd_idx ;
	private String cd_number;
	private String cd_cvc ;
	private String cd_pwd;
	private String cd_color;
	private String cd_approve;
	private String cd_design;
	private LocalDate cd_apply_date;
	private String str_cd_apply_date;
	private String cd_expired_date;
	
}
