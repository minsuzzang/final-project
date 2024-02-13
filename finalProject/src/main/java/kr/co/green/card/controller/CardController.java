
package kr.co.green.card.controller;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/card")
public class CardController {
	
	@GetMapping("/cardGuide.do")
	public String cardGuidePage(){
		return "card/guide/cardGuide";
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
			return"common/error";
	    }
		
	    session.setAttribute("cd_color", color.get());
	    return "card/select/" + color.get() + "Select";
	}
	
	@GetMapping("/result.do")
	public String cardApplyResult(HttpSession session, Model model) {
		//upload파일을 동적으로 가져오기 위한 데이터 바인딩
		
		String color = (String)session.getAttribute("cd_color");	// color = red
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
