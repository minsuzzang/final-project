package kr.co.green.card.model.service;

import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.Random;
import java.util.stream.IntStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.green.card.model.dao.CardDAO;
import kr.co.green.card.model.dto.CardDTO;

@Service
public class CardServiceImpl implements CardService {

	private final CardDAO cardDAO;

	@Autowired
	public CardServiceImpl(CardDAO cardDAO) {
		super();
		this.cardDAO = cardDAO;
	}

	@Override
	// 카드 신청을 위한 신청정보 저장 메소드
	public void cardApply(int m_idx, String cd_color, String cd_design, String m_english_name, String m_address) {
		cardDAO.insertCardApplyInfo(m_idx, cd_color, cd_design, m_english_name, m_address);
	}

	@Override
	public int getMemberCardNum(int m_idx) {
		return cardDAO.getMemberCardNum(m_idx);

	}

	@Override
	public List<CardDTO> cardInfo(int m_idx) {

		return cardDAO.cardInfo(m_idx);
	}

	@Override
	public void generateCardDetail(List<CardDTO> cards) {
		//카드번호 생성하고, cvc생성 메소드와 유효기간 생성 메소드 호출

		final Random random = new Random();

		IntStream.range(0, cards.size()).forEach(i -> {
			StringBuilder cardNumber = new StringBuilder();
			IntStream.range(0, 4).forEach(j -> {
				int digits = random.nextInt(9999);
				String stringDigits = String.format("%04d", digits);
				cardNumber.append(stringDigits);
				if (j < 3) {
					cardNumber.append("-");
				}
			});
			cards.get(i).setCd_number(cardNumber.toString());
		});

		generateCvc(cards, random);
		generateExpiredDate(cards);
	}

	@Override
	public void generateCvc(List<CardDTO> cards, Random random) {
		//cvc 생성
		IntStream.range(0, cards.size()).forEach(i -> {
			int digits = random.nextInt(999);
			String stringDigits = String.format("%03d", digits);
			cards.get(i).setCd_cvc(stringDigits);
		});
	}

	@Override
	public void generateExpiredDate(List<CardDTO> cards) {
		//유효기간 생성
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MM/YY");
		
		IntStream.range(0, cards.size()).forEach(i ->{
			cards.get(i).setCd_expired_date(cards.get(i).getCd_apply_date().plusYears(5).format(formatter));
		});
		
	}

	@Override
	public void cardApply(CardDTO cardDTO)  {
		Objects.requireNonNull(cardDTO.getCd_idx(), "카드 정보를 찾을 수 없습니다. 다시 시도해 주세요.");	// 필드값이 null 이라면 NullPointerException 던짐
	    Objects.requireNonNull(cardDTO.getCd_number(), "카드번호가 입력되어야 합니다. 다시 시도해 주세요.");
	    Objects.requireNonNull(cardDTO.getCd_cvc(), "CVC가 입력되어야 합니다. 다시 시도해 주세요.");
	    Objects.requireNonNull(cardDTO.getCd_pwd(), "비밀번호가 입력되어야 합니다. 다시 시도해 주세요.");
	    
	    if(cardDTO.getCd_approve().equals("심사중")) {
	    	System.out.println("심사중");
	    	throw new NullPointerException("아직 심사중입니다.");
	    }
	    
	    int result = cardDAO.cardFinalApply(cardDTO);
		if(result == 0) {
			throw new NullPointerException("DB 삽입 실패");	// 추후 수정 -> db insert 익셉션
		}
			
	}
	
	
	
	

}
