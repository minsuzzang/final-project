package kr.co.green.card.model.service;

import java.util.List;

import kr.co.green.card.model.dto.CardDTO;

public interface CardService {
	
	// 카드 신청을 위한 신청정보 저장 메소드
	void cardApply(int m_idx, String cd_color, String cd_design, String cd_english_name, String m_address);

	// 회원이 보유한 카드 갯수 조회
	int getMemberCardNum(int m_idx);

	// 카드 신청 정보 조회
	List<CardDTO> cardInfo(int m_idx);

}
