package kr.co.green.purchase.model.service;

import java.util.List;

import kr.co.green.purchase.model.dto.PurchaseDTO;

public interface PurchaseService {
	int purchaseHistory(PurchaseDTO purchase);

	List<PurchaseDTO> purchaseInfo(int m_idx);

}
