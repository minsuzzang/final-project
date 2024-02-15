
package kr.co.green.card.controller;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.IntStream;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;

import kr.co.green.card.model.dto.CardDTO;
import kr.co.green.card.model.service.CardService;

@Controller
@RequestMapping("/card")
public class CardController {

	@GetMapping("/cardGuide.do")
	public String cardGuidePage(){
		return "card/guide/cardGuide";
	}

	private final CardService cardService;

	@Autowired
	public CardController(CardService cardService) {
		this.cardService = cardService;
	}

	@GetMapping("/cardApplyForm.do")
	public String cardApplyForm(HttpSession session, RedirectAttributes redirectAttributes) {
		int memberIdx = (Integer) session.getAttribute("m_idx");
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
		List<CardDTO> cards = cardService.cardInfo((int)session.getAttribute("m_idx"), "신청 승인된 카드 조회");
		
		// 카드 번호, cvc, 유효기간 생성 
		cardService.generateCardDetail(cards);
		
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
	
	@GetMapping("/lost")
	public ModelAndView cardLost(HttpSession session, ModelAndView mav, RedirectAttributes redirectAttributes) {
		
		List<CardDTO> cards = cardService.cardInfo((int)session.getAttribute("m_idx"), "보유 카드 조회");
		
		if(cards.size() == 0) {
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

}








