package kr.co.green.card.model.service;

import java.util.List;
import java.util.Map;
import java.util.Random;

import kr.co.green.card.model.dto.CardDTO;

public interface CardService {
	
	// 카드 신청을 위한 기본 신청정보 저장 메소드
	void cardApply(int m_idx, String cd_color, String cd_design, String m_english_first_name, String m_english_last_name, String m_address, String m_detailed_address);

	// 카드 신청을 위한 모든 신청정보 저장 메소드
	int cardApply(CardDTO cardDTO);
	
	// 회원이 보유한 카드 갯수 조회
	int getMemberCardNum(int m_idx);

	//카드 번호 생성 
	void generateCardDetail(List<CardDTO> cards);
	
	//cvc 생성
	void generateCvc(List<CardDTO> cards, Random random);
	
	//유효기간 생성
	void generateExpiredDate(List<CardDTO> cards);

	// 카드 조회 
	List<CardDTO> cardInfo(int m_idx, String statement);

	//분실신고 선택된 카드 정보 조회
	Map<String, Object> cardInfo(int cd_idx);

}
