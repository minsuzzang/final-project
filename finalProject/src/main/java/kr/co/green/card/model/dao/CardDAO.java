package kr.co.green.card.model.dao;

import java.util.List;

import kr.co.green.card.model.dto.CardDTO;

public interface CardDAO {
	
	// 카드 신청을 위한 신청정보 저장 메소드
	void insertCardApplyInfo(int m_idx, String cd_color, String cd_design, String m_english_name, String m_address);

	int getMemberCardNum(int m_idx);

	List<CardDTO> cardInfo(int m_idx);

}
