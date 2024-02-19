package kr.co.green.card.apply.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.co.green.card.model.dto.CardDTO;
import kr.co.green.card.model.service.CardService;
import kr.co.green.common.exception.DataBaseAccessResult;
import kr.co.green.common.session.SessionHandler;
import kr.co.green.common.validation.DataValidation;

@RestController
public class CardApplyController {

	private final CardService cardService;
	private final SessionHandler sessionHandler;
	private final DataValidation dataValidation;
	private final DataBaseAccessResult dbResult;

	@Autowired
	public CardApplyController(CardService cardService, SessionHandler sessionHandler, DataValidation dataValidation,
			DataBaseAccessResult dbResult) {
		this.cardService = cardService;
		this.sessionHandler = sessionHandler;
		this.dataValidation = dataValidation;
		this.dbResult = dbResult;
	}

	@PostMapping("/card/apply")
	public Map<String, Object> applyCard(@RequestBody Map<String, Object> applyMap,
			@SessionAttribute("m_idx") int memberIdx,
			@SessionAttribute("cd_color") String cdColor) {

		dataValidation.checkParameter(applyMap);

		if (memberIdx == 0)
			return dbResult.handleDataAccessFailure();
		else {
			applyMap.put("cd_color", cdColor);
			applyMap.put("m_idx", memberIdx);
			
			sessionHandler.setSessionAttribute("cd_design", (String) applyMap.get("cd_design"));
			cardService.cardApply(applyMap);

			return dbResult.handleDataAccessSuccess("/card/result.do");
		}
	}

	@PostMapping("/card/cardInfo/submit")
	public ResponseEntity<String> insertCardInfo(@RequestBody CardDTO cardDTO) {

		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		cardDTO.setCd_apply_date(LocalDate.parse(cardDTO.getStr_cd_apply_date(), formatter));

		int result = cardService.cardApply(cardDTO);

		if (result == 1)
			return new ResponseEntity<>("카드정보 제출 완료", HttpStatus.OK);
		else
			return new ResponseEntity<>("카드정보 제출 실패", HttpStatus.BAD_REQUEST);
	}

}
