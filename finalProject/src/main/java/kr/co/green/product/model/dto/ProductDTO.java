package kr.co.green.product.model.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ProductDTO {
	private int p_idx;
	private String p_name;
	private String p_eng_name;
	private String p_content;
	private String p_brand;
	private int p_price1;
	private int p_price2;
	private String p_file_path;
}
