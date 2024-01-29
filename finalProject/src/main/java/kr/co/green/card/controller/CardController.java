package kr.co.green.card.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		
		return "card/cardApply";
	}
	

	@PostMapping("/apply.do")
	public String submitApplication(HttpSession session, @RequestParam("design") String design,
			@RequestParam("englishName") String englishName, @RequestParam("address") String address, Model model) {
		
		StringBuilder sb = new StringBuilder();

		Optional<Integer> memberidx = Optional.ofNullable((Integer)session.getAttribute("m_idx"));
		String memberName = Optional.ofNullable((String)session.getAttribute("m_name")).orElse("이름을 조회할 수 없습니다.");
		
		memberidx.ifPresentOrElse(idx -> {
			int result = cardService.cardApply(idx, "green", design, englishName, address);
			if (result > 0) {
				
				Map<String, String> resultMap = new HashMap<>();
				resultMap.put("cd_design", design);
				resultMap.put("m_english_name", englishName);
				resultMap.put("m_address", address);
				resultMap.put("m_name", memberName);
				
				model.addAllAttributes(resultMap);
				
				sb.append("card/cardApplyResult");
			}
			else
				sb.append("common/error"); 
		}, () -> {
			sb.append("common/error");
		});
		
		return sb.toString();

	}

}
