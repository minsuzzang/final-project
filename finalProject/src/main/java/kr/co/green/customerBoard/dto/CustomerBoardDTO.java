package kr.co.green.customerBoard.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class CustomerBoardDTO {
	private int cb_idx;
	private String cb_title;
	private String cb_content;
	private int cb_views;
	private String cb_in_date;
	private String cb_update_date;
	private String cb_delete_date;
	private String cb_reply;
	private String cb_reply_check;
	private int m_idx;
	private String m_name;
	private String m_type;
	private String searchText;
	
}
