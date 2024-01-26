package kr.co.green.card.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.green.card.model.dao.CardDAO;

@Service
public class CardServiceImpl implements CardService{

	private final CardDAO cardDAO;
	
	@Autowired
	public CardServiceImpl(CardDAO cardDAO) {
		super();
		this.cardDAO = cardDAO;
	}


	@Override
	// 카드 신청을 위한 신청정보 저장 메소드
	public int cardApply(int m_idx, String cd_color, String cd_design, String m_english_name, String m_address) {
		return cardDAO.insertCardApplyInfo(m_idx, cd_color, cd_design, m_english_name, m_address);
	}

}
