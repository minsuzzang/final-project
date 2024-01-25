package kr.co.green.card.controller;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

	@PostMapping("/apply.do")
	public String submitApplication(HttpServletRequest request, @RequestParam("design") String design,
			@RequestParam("englishName") String englishName, @RequestParam("address") String address, Model model) {
		
		StringBuilder sb = new StringBuilder();

		HttpSession session = request.getSession();
		Optional<Integer> memberidx = Optional.ofNullable((Integer) session.getAttribute("m_idx"));
		
		memberidx.ifPresentOrElse(idx -> {
			int result = cardService.cardApply(idx, "green", design, englishName, address);
			if (result > 0)
				sb.append("/nextPage");
			else
				sb.append("common/error/");
		}, () -> {
			sb.append("common/error");
		});
		
		return sb.toString();

	}

}
