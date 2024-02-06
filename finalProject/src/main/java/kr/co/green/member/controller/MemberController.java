package kr.co.green.member.controller;

import java.io.IOException;
import java.security.SecureRandom;
import java.util.Objects;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.green.ScriptUtil.ScriptUtil;
import kr.co.green.email.util.EmailSender;
import kr.co.green.member.model.dto.MemberDTO;
import kr.co.green.member.model.service.MemberServiceImpl;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberServiceImpl memberService;

	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;

	@GetMapping("/emailForm.do")
	public String emailForm(HttpServletResponse response, MemberDTO member, Model model, @RequestParam("idx") int idx) {

		member.setM_idx(idx);
		MemberDTO flag = memberService.chkMembertpmPwd(member);

		if (flag == null) {
			try {
				ScriptUtil.alertAndMovePage(response, "잘못된 경로 입니다.", "/");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		model.addAttribute("m_idx", idx);

		return "member/email";
	}

	@GetMapping("/findPwdForm.do")
	public String findPwdForm(HttpSession session, Model model) {
		// 사용자가 입력한 임시코드가 일치하는지
		// 일치할 때 사용자 idx model로 전달

		return "member/pwdFind";
	}

	@PostMapping("/updatePwd.do")
	@ResponseBody
	public String updatePwd(HttpServletResponse response, MemberDTO member, Model model) {
		System.out.println(member.getM_idx());
		System.out.println(member.getM_pwd());

		String hashedPassword = bcryptPasswordEncoder.encode(member.getM_pwd());
		member.setM_pwd(hashedPassword);
		int chkFl = memberService.updateMemberPassword(member);
		if (chkFl > 0) {
			try {
				ScriptUtil.alertAndMovePage(response, "변경되었습니다.", "/member/loginForm.do");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			try {
				ScriptUtil.alert(response, "실패되었습니다.");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}

	@PostMapping("/code.do")
	public String Newpwd(MemberDTO member, Model model, HttpSession session) {

		session.setAttribute("email", member.getM_email());

		try {
			MemberDTO foundMember = memberService.findMemberPwd(member);
			if (foundMember != null) {
				// 비밀번호가 일치하는 경우 새 비밀번호 페이지로 이동
				return "member/newpwd";
			} else {
				// 비밀번호가 일치하지 않거나 회원을 찾지 못한 경우 pwdFind 페이지로 이동
				return "member/pwdFind";
			}
		} catch (Exception e) {
			e.printStackTrace();
			// 에러가 발생한 경우 에러 페이지로 이동
			return "common/error";
		}
	}

	@PostMapping("/codeChk.do")
	public String codeChk(HttpServletResponse response, MemberDTO member, Model model) {

		try {

			MemberDTO mem = memberService.memberDetail(member.getM_idx());

			if (mem.getM_temporary().equals(member.getM_code_chk())) {
				ScriptUtil.alert(response, "인증되었습니다.");
			} else {
				ScriptUtil.alertAndMovePage(response, "인증이 실패되었습니다.\\n정확한 코드를 입력하세요.",
						"/member/emailForm.do?idx=" + member.getM_idx());
			}
			model.addAttribute("m_idx", member.getM_idx());
			return "member/newpwd";
		} catch (Exception e) {
			e.printStackTrace();
			// 에러가 발생한 경우 에러 페이지로 이동
			return "common/error";
		}
	}

	// 비밀번호 찾기
	@PostMapping("/findPwd.do")
	@ResponseBody
	public String findPwd(MemberDTO member, Model model) {
		try {
			MemberDTO foundMember = memberService.findMemberPwd(member);
			if (foundMember != null) {
				System.out.println(foundMember);
				String newPassword = generateRandomPassword();

				foundMember.setM_temporary(newPassword);
				memberService.updateMembertmpPassword(foundMember);

				EmailSender.sendNewPassword(foundMember.getM_email(), newPassword, foundMember.getM_idx());
				return foundMember.getM_email(); // Success
			} else {
				return ""; // Member not found
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "error"; // General error
		}
	}

	private String generateRandomPassword() {
		String combinedChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
		SecureRandom secureRandom = new SecureRandom();
		StringBuilder password = new StringBuilder();

		for (int i = 0; i < 12; i++) {
			int randomIndex = secureRandom.nextInt(combinedChars.length());
			password.append(combinedChars.charAt(randomIndex));
		}
		return password.toString();
	}

	@GetMapping("/findIdForm.do")
	public String emailFindForm() {
		return "member/emailFind";
	}

	// 아이디 찾기
	@PostMapping("/findId.do")
	@ResponseBody
	public String findId(MemberDTO member, Model model) {

		MemberDTO foundMember = memberService.findMemberId(member);
		if (foundMember != null) {
			return foundMember.getM_email();
		} else {
			return "";
		}
	}

	@GetMapping("/loginForm.do")
	public String loginForm() {
		return "member/login";
	}

	// 로그인
	@PostMapping("/login.do")
	public String loginIndex(MemberDTO member, HttpSession session, Model model) {
		MemberDTO loginUser = memberService.loginMember(member);
		// loginUser 객체가 비어있지 않을 때 (로그인 성공)
		if (!Objects.isNull(loginUser) && bcryptPasswordEncoder.matches(member.getM_pwd(), loginUser.getM_pwd())) {
			session.setAttribute("m_idx", loginUser.getM_idx());
			session.setAttribute("m_name", loginUser.getM_name());

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

	// 이메일 중복검사
	@PostMapping("/checkEmail.do")
	@ResponseBody
	public String checkEmail(String email) {

		int result = memberService.checkEmail(email);

		if (result == 1) {
			return "duplication";
		} else {
			return "available";
		}
	}

	// 회원가입
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

	@GetMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "common/index";
	}

}
