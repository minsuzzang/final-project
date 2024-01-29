package kr.co.green.card.model.service;


public interface CardService {
	
	// 카드 신청을 위한 신청정보 저장 메소드
	int cardApply(int m_idx, String cd_color, String cd_design, String cd_english_name, String m_address);

}
