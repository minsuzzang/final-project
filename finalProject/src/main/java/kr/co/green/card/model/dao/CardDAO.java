package kr.co.green.card.model.dao;

import java.util.List;
import java.util.Map;

import kr.co.green.card.model.dto.CardDTO;

public interface CardDAO {
	
	// 카드 신청을 위한 신청정보 저장 메소드
	void insertCardApplyInfo(Map<String, Object> applyMap);

	int getMemberCardNum(int m_idx);

	int insertCardApplyInfo(CardDTO cardDTO);

	List<CardDTO> cardInfo(int m_idx, String status);

	Map<String, Object> cardInfo(int cd_idx);

	int cardReport(int cd_idx);
}
