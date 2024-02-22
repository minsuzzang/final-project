
package kr.co.green.card.controller;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;

import kr.co.green.card.model.dto.CardDTO;
import kr.co.green.card.model.service.CardService;
import kr.co.green.common.session.SessionHandler;

@Controller
@RequestMapping("/card")
public class CardController {

	private final CardService cardService;
	private final SessionHandler sessionHandler;

	@Autowired
	public CardController(CardService cardService, SessionHandler sessionHandler) {
		this.cardService = cardService;
		this.sessionHandler = sessionHandler;
	}

	@GetMapping("/cardGuide.do")
	public String cardGuidePage() {
		return "card/guide/cardGuide";
	}

	@GetMapping("/cardApplyForm.do")
	public String cardApplyForm(@SessionAttribute("m_idx") int memberIdx, RedirectAttributes redirectAttributes) {
		int memberCardNum = cardService.getMemberCardNum(memberIdx);

		if (memberCardNum > 3) {
			redirectAttributes.addFlashAttribute("alertMsg", "신청할 수 있는 카드는 최대 3개입니다.");
			return "redirect:/";
		}

		return "card/apply/cardApply";
	}

	@GetMapping("/color/{color}")
	public String selectColor(@PathVariable("color") Optional<String> color) {

		if (!color.isPresent()) {
			return "common/error"; // color 값이 없는 경우의 처리
		}
		return "card/detail/" + color.get().toLowerCase() + "Detail";
	}

	@GetMapping("/design/{color}")
	public String design(@PathVariable("color") Optional<String> color) {

		if (!color.isPresent()) {
			return "common/error";
		}

		sessionHandler.setSessionAttribute("cd_color", color.get());
		return "card/select/" + color.get() + "Select";
	}

	@GetMapping("/result.do")
	public String cardApplyResult(Model model) {
		// upload파일을 동적으로 가져오기 위한 데이터 바인딩

		String color = sessionHandler.getSessionAttribute("cd_color"); // red
		String design = sessionHandler.getSessionAttribute("cd_design"); // design1
		String cd_color_upper = String.valueOf(color.charAt(0)).toUpperCase() + color.substring(1, color.length());

		model.addAttribute("cd_color_lower", color);
		model.addAttribute("cd_color_upper", cd_color_upper);
		model.addAttribute("cd_design_num", design.charAt(design.length() - 1));

		sessionHandler.removeSessionAttribute("cd_color");
		sessionHandler.removeSessionAttribute("cd_design");

		return "card/result/cardApplyResult";
	}

	@GetMapping("/cardInfo")
	public String setCardInfo(@SessionAttribute("m_idx") int memberIdx, Model model) {
		Gson jsonParser = new Gson();
		// 카드인덱스, 신청 날짜, 승인 여부 조회
		List<CardDTO> cards = cardService.cardInfo(memberIdx, "신청 승인된 카드 조회");

		// 카드 번호, cvc, 유효기간 생성
		cardService.generateCardDetail(cards);

		String jsonCards = jsonParser.toJson(cards);
		model.addAttribute("cards", cards);
		model.addAttribute("jsonCards", jsonCards);

		return "card/result/setCardInfo";

	}

	@GetMapping("/lost")
	public ModelAndView cardLost(@SessionAttribute("m_idx") int memberIdx, ModelAndView mav,
			RedirectAttributes redirectAttributes) {

		List<CardDTO> cards = cardService.cardInfo(memberIdx, "보유 카드 조회");

		if (cards.size() == 0) {
			redirectAttributes.addFlashAttribute("alertMsg", "보유한 카드가 없습니다.");
			mav.setViewName("redirect:/");
			return mav;
		}

		mav.addObject("cards", cards);
		mav.setViewName("/card/lost/cardLost");
		return mav;
	}

	@GetMapping("/lost/{idx}")
	public ModelAndView cardLost(@PathVariable("idx") int cardIdx, ModelAndView mav) {

		Map<String, Object> lostCardMap = cardService.cardInfo(cardIdx);

		mav.addAllObjects(lostCardMap);
		mav.setViewName("/card/lost/cardLostDetail");
		return mav;
	}

	@GetMapping("/report/{idx}")
	public String cardReport(@PathVariable("idx") int cardIdx, RedirectAttributes redirectAttributes) {
		cardService.cardReport(cardIdx);

		redirectAttributes.addFlashAttribute("alertMsg", "신고되었습니다.");
		return "redirect:/";
	}
}
