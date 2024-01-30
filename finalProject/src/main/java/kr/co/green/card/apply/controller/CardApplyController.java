package kr.co.green.card.apply.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import kr.co.green.card.model.service.CardService;

@RestController
public class CardApplyController {

	private final CardService cardService;

	@Autowired
	public CardApplyController(CardService cardService) {
		this.cardService = cardService;
	}

	@PostMapping("/card/apply")
	public Map<String, Object> applyCard(@RequestBody Map<String, Object> applyMap, HttpSession session, Model model) {

		String cd_color = (String) session.getAttribute("cd_color"); // 세션에서 지우기
		String cd_design = (String) applyMap.get("cd_design");
		String m_english_name = (String) applyMap.get("m_english_name");
		String m_address = (String) applyMap.get("m_address");

		Optional<Integer> memberidx = Optional.ofNullable((Integer) session.getAttribute("m_idx"));
		Map<String, Object> result = new HashMap<>();

		memberidx.ifPresentOrElse(idx -> {
			int applyResult = cardService.cardApply(idx, cd_color, cd_design, m_english_name, m_address);
			if (applyResult > 0) {
				session.setAttribute("cd_color", cd_color);
				session.setAttribute("cd_design", cd_design);
				result.put("success", true);
				result.put("redirectUrl", "/card/result.do");
			} else
				result.put("success", false);
		}, () -> {
			result.put("success", false);
		});

		return result;
	}

}
