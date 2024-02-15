package kr.co.green.card.model.dao;

import java.util.List;
import java.util.Map;

import kr.co.green.card.model.dto.CardDTO;

public interface CardDAO {
	
	// 카드 신청을 위한 신청정보 저장 메소드
	void insertCardApplyInfo(int m_idx, String cd_color, String cd_design, String m_english_first_name, String m_english_last_name, String m_address, String m_detailed_address);

	int getMemberCardNum(int m_idx);

	int insertCardApplyInfo(CardDTO cardDTO);

	List<CardDTO> cardInfo(int m_idx, String status);

	Map<String, Object> cardInfo(int cd_idx);
}
