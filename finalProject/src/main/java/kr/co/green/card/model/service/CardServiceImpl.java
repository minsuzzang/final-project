package kr.co.green.card.model.service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessResourceFailureException;
import org.springframework.stereotype.Service;

import kr.co.green.card.model.dao.CardDAO;
import kr.co.green.card.model.dto.CardDTO;

@Service
public class CardServiceImpl implements CardService {

	private final CardDAO cardDAO;
	private final CardGenerator cardGenerator;

	@Autowired
	public CardServiceImpl(CardDAO cardDAO, CardGenerator cardGenerator) {
		super();
		this.cardDAO = cardDAO;
		this.cardGenerator = cardGenerator;
	}

	@Override
	// 카드 신청을 위한 신청정보 저장 메소드
	public void cardApply(Map<String, Object> applyMap) {
		cardDAO.insertCardApplyInfo(applyMap);
	}

	@Override
	public int getMemberCardNum(int m_idx) {
		return cardDAO.getMemberCardNum(m_idx);

	}

	@Override
	public void generateCardDetail(List<CardDTO> cards) {
		// 카드번호 생성, cvc생성, 유효기간 생성 메소드 호출

		cardGenerator.generateCardNumber(cards);
		cardGenerator.generateCvc(cards);
		cardGenerator.generateExpiredDate(cards);
		
		IntStream.range(0, cards.size()).forEach(i -> {
			cardGenerator.formatCardColorAndDesign(cards.get(i));
		});
	}

	@Override
	public int cardApply(CardDTO cardDTO) {

		if (!cardGenerator.validateCard(cardDTO)) {
			throw new IllegalArgumentException("카드가 심사중이거나 비밀번호 입력이 잘못되었습니다.");
		}

		int result = cardDAO.insertCardApplyInfo(cardDTO);
		if (result < 1) {
			throw new IllegalArgumentException("서버 오류 또는 카드 입력이 잘못되었습니다."); 
		}
		return result;
	}
	
	@Override
	public List<CardDTO> cardInfo(int m_idx, String status) {

		List<CardDTO> cards = cardDAO.cardInfo(m_idx, status).stream().map(card -> {
			cardGenerator.formatCardColorAndDesign(card);
			return card;
		}).collect(Collectors.toList());

		return cards;
	}
	
	@Override
	public Map<String, Object> cardInfo(int cd_idx) {
		
		Map<String, Object> lostCardMap = cardDAO.cardInfo(cd_idx);
		CardDTO cardDTO = (CardDTO)lostCardMap.get("cardDTO");
		String msg = "카드 정보를 찾을 수 없습니다. 다시 시도해 주세요.";
		
		Objects.requireNonNull(cardDTO.getCd_expired_date() , msg);
		Objects.requireNonNull(cardDTO.getCd_color() , msg);
		Objects.requireNonNull(cardDTO.getCd_design() , msg);
		
		cardGenerator.formatCardColorAndDesign(cardDTO);
		
		return lostCardMap;
	}

	@Override
	public void cardReport(int cd_idx) {
		int result = cardDAO.cardReport(cd_idx);
		if(result != 1)
			throw new DataAccessResourceFailureException("분실카드 신고 실패");
	}

	@Override
	public void formatCardApplyDate(CardDTO cardDTO) {
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		cardDTO.setCd_apply_date(LocalDate.parse(cardDTO.getStr_cd_apply_date(), formatter));
	}
}
