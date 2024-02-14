package kr.co.green.introduce.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/introduce")
public class IntroduceController {
	
	@GetMapping("/hyundaiCard.do")
	public String introducePage(){
		return "introduce/hyundaiCard";
	}
	
	@GetMapping("/culture.do")
	public String culturePage(){
		return "introduce/culture";
	}
	
	@GetMapping("/philosophy.do")
	public String philosophyPage(){
		return "introduce/philosophy";
	}
}
