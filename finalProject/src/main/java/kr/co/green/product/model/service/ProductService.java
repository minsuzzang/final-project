package kr.co.green.product.model.service;

import kr.co.green.card.model.dto.CardDTO;
import kr.co.green.product.model.dto.ProductDTO;

public interface ProductService {
	// 상세보기
	ProductDTO productDetail(int p_idx);
}
