
package kr.co.green.card.controller;

import java.util.List;
import java.util.Optional;
import java.util.stream.IntStream;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;

import kr.co.green.card.model.dto.CardDTO;
import kr.co.green.card.model.service.CardService;

@Controller
@RequestMapping("/card")
public class CardController {

	private final CardService cardService;

	@Autowired
	public CardController(CardService cardService) {
		this.cardService = cardService;
	}

	@GetMapping("/cardApplyForm.do")
	public String cardApplyForm(HttpSession session, RedirectAttributes redirectAttributes) {
		int memberIdx = (Integer) session.getAttribute("m_idx");
		int memberCardNum = cardService.getMemberCardNum(memberIdx); // 로그인 인터셉터에서 세션유무를 체크하고 있고, 정수타입이기 때문에 null이 들어올 수
																		// 없다.

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
		return "card/detail/" + color.get().toLowerCase() + "Detail"; // color을 변수로 받아서 각자 다른 detail페이지로 넘김
	}

	@GetMapping("/design/{color}")
	public String design(@PathVariable("color") Optional<String> color, HttpSession session) {

		if (!color.isPresent()) {
			return "common/error";
		}

		session.setAttribute("cd_color", color.get());
		return "card/select/" + color.get() + "Select";
	}

	@GetMapping("/result.do")
	public String cardApplyResult(HttpSession session, Model model) {
		// upload파일을 동적으로 가져오기 위한 데이터 바인딩

		String color = (String) session.getAttribute("cd_color");
		String design = (String) session.getAttribute("cd_design");
		String cd_color_upper = String.valueOf(color.charAt(0)).toUpperCase() + color.substring(1, color.length());

		model.addAttribute("cd_color_lower", color);
		model.addAttribute("cd_color_upper", cd_color_upper);
		model.addAttribute("cd_design_num", design.charAt(design.length() - 1));
		session.removeAttribute("cd_color");
		session.removeAttribute("cd_design");

		return "card/result/cardApplyResult";
	}

	@GetMapping("/cardInfo")
	public String setCardInfo(HttpSession session, Model model) {
		Gson jsonParser = new Gson();
		// 카드인덱스, 신청 날짜, 승인 여부 조회
		List<CardDTO> cards = cardService.cardInfo((int)session.getAttribute("m_idx"));
		
		// 카드 번호, cvc, 유효기간 생성 
		cardService.generateCardDetail(cards);
		
		// 이미지 경로 생성을 위한 변수 수정 ( 추후 서비스로 분리 )
		IntStream.range(0, cards.size()).forEach(i -> {
			cards.get(i).setCd_color(String.valueOf(cards.get(i).getCd_color().charAt(0)).toUpperCase() 
					+ cards.get(i).getCd_color().substring(1, cards.get(i).getCd_color().length()));
			
			cards.get(i).setCd_design(String.valueOf((cards.get(i).getCd_design().charAt(cards.get(i).getCd_design().length() - 1))));
		});
		
		String jsonCards = jsonParser.toJson(cards);
	    model.addAttribute("cards", cards);
	    model.addAttribute("jsonCards", jsonCards);
		
		return "card/result/setCardInfo";
		
	}

}
