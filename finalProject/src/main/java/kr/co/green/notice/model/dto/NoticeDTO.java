package kr.co.green.notice.model.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class NoticeDTO {
	private int n_idx;
	private String n_title;
	private String n_content;
	private int n_views;
	private String n_in_date;
	private String n_update_date;
	private String n_delete_date;
	private int m_idx;
	private String m_name;
	private String m_type;
	private String searchText;
}
