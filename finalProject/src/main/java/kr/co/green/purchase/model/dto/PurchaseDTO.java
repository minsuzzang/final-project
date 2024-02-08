package kr.co.green.purchase.model.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class PurchaseDTO {
	//purchase_history 
	private int ph_idx;
	private String ph_in_date;
	private int ph_total_price;
	
	//product
	private int p_idx;
	private String p_name;
	private int p_price1;
	private int p_price2;
	
	//member
	private int m_idx;
	private String m_email;
	private String m_name;
	private String m_phone;
	private String m_address;
}
