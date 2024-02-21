package kr.co.green.card.model.service;

import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.stream.IntStream;

import org.springframework.stereotype.Component;

import kr.co.green.card.model.dto.CardDTO;

@Component
public class CardGenerator {
	
	final Random random = new Random();

		// 카드정보 최종 설정 전 승인여부와 비밀번호 길이 체크
		public boolean validateCard(CardDTO cardDTO) {
			Objects.requireNonNull(cardDTO.getCd_idx(), "카드 정보를 찾을 수 없습니다. 다시 시도해 주세요."); 
			Objects.requireNonNull(cardDTO.getCd_number(), "카드번호가 입력되어야 합니다. 다시 시도해 주세요.");
			Objects.requireNonNull(cardDTO.getCd_cvc(), "CVC가 입력되어야 합니다. 다시 시도해 주세요.");
			
			if(cardDTO.getCd_approve().equals("심사중") || cardDTO.getCd_pwd().length()<4)
				return false;
			else
				return true;
		}
		
		//카드번호 생성
		public void generateCardNumber(List<CardDTO> cards) {
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
		}

		// cvc 생성
		public void generateCvc(List<CardDTO> cards) {
			IntStream.range(0, cards.size()).forEach(i -> {
				int digits = random.nextInt(999);
				String stringDigits = String.format("%03d", digits);
				cards.get(i).setCd_cvc(stringDigits);
			});
		}

		// 유효기간 생성
		public void generateExpiredDate(List<CardDTO> cards) {
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MM/YY");

			IntStream.range(0, cards.size()).forEach(i -> {
				cards.get(i).setCd_expired_date(cards.get(i).getCd_apply_date().plusYears(5).format(formatter));
			});
		}
		
		//카드 색깔, 디자인 수정(view단에서 동적으로 가져오기 위함)
		public void formatCardColorAndDesign(CardDTO card) {
			card.setCd_color(card.getCd_color().substring(0, 1).toUpperCase() + card.getCd_color().substring(1));
			card.setCd_design(card.getCd_design().substring(card.getCd_design().length() - 1));
		}
	
}
