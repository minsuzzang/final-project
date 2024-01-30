
package kr.co.green.card.controller;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.green.card.model.service.CardService;

@Controller
@RequestMapping("/card")
public class CardController {

	private final CardService cardService;

	@Autowired
	public CardController(CardService cardService) {
		super();
		this.cardService = cardService;
	}
	
	@GetMapping("/cardApplyForm.do")
	public String cardApplyForm() {
		
		return "card/apply/cardApply";
	}
	
	
	@GetMapping("/color/{color}")
	public String selectColor(@PathVariable("color") Optional<String> color) {
		
		 if (!color.isPresent()) {
		        return "common/error";	// color 값이 없는 경우의 처리
		    }
		
		return "card/detail/" + color.get().toLowerCase() + "Detail";	//color을 변수로 받아서 각자 다른 detail페이지로 넘김
	}
	
	@GetMapping("/design/{color}")
	public String design(@PathVariable("color")  Optional<String> color, HttpSession session) {
		
		if (!color.isPresent()) {
			return"common/error";	//color 값이 없는 경우의 처리
	    }
		
	    session.setAttribute("cd_color", color.get());
	    return "card/select/" + color.get() + "Select";
	}
	
	@GetMapping("/result.do")
	public String cardApplyResult(HttpSession session, Model model) {
		
		// 현재: 세션에서 가져온 color의 0번 인덱스에 해당하는 문자를 전부 대문자로 변환
		// 변경할 로직: 세션에서 가져온 color의 0번 인덱스만 추출해서 대문자로 변환 후 1 ~ 끝 인덱스와 합침
		
		String color = (String)session.getAttribute("cd_color");
		String design = (String)session.getAttribute("cd_design");
		String cd_color_upper = String.valueOf(color.charAt(0)).toUpperCase() + color.substring(1, color.length());
		
		model.addAttribute("cd_color_lower", color);
		model.addAttribute("cd_color_upper", cd_color_upper);
		model.addAttribute("cd_design_num", design.charAt(design.length() - 1));
		
		session.removeAttribute("cd_color");
		session.removeAttribute("cd_design");
		
		return "card/result/cardApplyResult";
	}
	

}
