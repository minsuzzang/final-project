package kr.co.green.member.controller;

import java.util.Objects;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.green.member.model.dto.MemberDTO;
import kr.co.green.member.model.service.MemberServiceImpl;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberServiceImpl memberService;

	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;

	@GetMapping("/loginForm.do")
	public String loginForm() {
		return "member/login";
	}

	@PostMapping("/login.do")
	public String loginIndex(MemberDTO member, HttpSession session, Model model) {
		MemberDTO loginUser = memberService.loginMember(member);
		// loginUser 객체가 비어있지 않을 때 (로그인 성공)
		if (!Objects.isNull(loginUser) && bcryptPasswordEncoder.matches(member.getM_pwd(), loginUser.getM_pwd())) {
			session.setAttribute("m_idx", loginUser.getM_idx());

			System.out.println(loginUser.getM_idx());
			session.setAttribute("m_name", loginUser.getM_name());
			session.setAttribute("m_type", loginUser.getM_type());

			return "common/index";
		} else {
			return "member/login";
		}
	}

	@GetMapping("/registerForm.do")
	public String registerForm() {
		return "member/register";
	}

	@PostMapping("/checkEmail.do")
	@ResponseBody
	public String checkEmail(String email) {
		// 이메일 중복검사
		int result = memberService.checkEmail(email);

		if (result == 1) {
			return "duplication";
		} else {
			return "available";
		}
	}

	@PostMapping("/register.do")
	public String register(MemberDTO member) {
		// 패스워드 암호화
		String passwrod = bcryptPasswordEncoder.encode(member.getM_pwd());
		member.setM_pwd(passwrod);

		int result = memberService.registerMember(member);

		if (result == 1) {
			return "member/login";
		} else {
			return "common/error";
		}

	}

}
