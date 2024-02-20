package kr.co.green.member.controller;

import java.io.IOException;
import java.security.SecureRandom;
import java.util.List;
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

import kr.co.green.card.model.dto.CardDTO;
import kr.co.green.card.model.service.CardService;
import kr.co.green.email.util.EmailSender;
import kr.co.green.member.model.dto.MemberDTO;
import kr.co.green.member.model.service.MemberServiceImpl;
import kr.co.green.product.model.dto.ProductDTO;
import kr.co.green.product.model.service.ProductService;
import kr.co.green.purchase.model.dto.PurchaseDTO;
import kr.co.green.purchase.model.service.PurchaseService;
import kr.co.green.scriptUtil.scriptUtil;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberServiceImpl memberService;

	@Autowired
	private CardService cardService;

	@Autowired
	private ProductService productService;

	@Autowired
	private PurchaseService purchaseService;

	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;

	@GetMapping("/UsageHistoryForm.do")
	public String UsageHistoryForm(PurchaseDTO purchase, MemberDTO member, HttpSession session, Model model) {
		Integer m_idx = (Integer) session.getAttribute("m_idx");
		member.setM_idx(m_idx);
		purchase.setM_idx(m_idx);

		List<PurchaseDTO> purchasesinfo = purchaseService.purchaseInfo(m_idx);
		MemberDTO memberinfo = memberService.getMemberInfo(member);

		// 각 구매에 해당하는 상품 정보를 조회
		for (PurchaseDTO p : purchasesinfo) {
			ProductDTO productinfo = productService.productDetail(p.getP_idx());

			p.setProductinfo(productinfo); // 구매 정보에 상품 정보 설정

		}

		model.addAttribute("purchasesinfo", purchasesinfo);
		model.addAttribute("memberinfo", memberinfo);

		return "myAccount/UsageHistory";
	}

	@GetMapping("/MyCardForm.do")
	public String MyCardForm(CardDTO card, MemberDTO member, HttpSession session, Model model) {
		Integer m_idx = (Integer) session.getAttribute("m_idx");
		member.setM_idx(m_idx);
		card.setCd_idx(m_idx);

		List<CardDTO> cards = cardService.cardInfo(m_idx, "내카드 조회");
		MemberDTO memberinfo = memberService.getMemberInfo(member);
		model.addAttribute("memberinfo", memberinfo);
		model.addAttribute("cards", cards);

		return "myAccount/mycard";
	}

	@PostMapping("/myinfoEdit.do")
	public String myinfoEdit(HttpServletResponse response, MemberDTO member, HttpSession session, Model model) {

		// 세션에서 회원 ID 가져오기
		Integer memberId = (Integer) session.getAttribute("m_idx");

		// DTO에 회원 ID 설정
		member.setM_idx(memberId);

		int result = memberService.updateMemberInfo(member);
		if (result > 0) {
			// 업데이트 성공
			MemberDTO updatedMember = memberService.getMemberInfo(member);
			model.addAttribute("memberinfo", updatedMember);

			return "myAccount/myinfo";
		} else {
			// 업데이트 실패
			return "myAccount/myinfoEdit";
		}
	}

	@GetMapping("/myinfoEditForm.do")
	public String myinfoEditForm(HttpSession session, MemberDTO member, Model model) {
		member.setM_idx((int) session.getAttribute("m_idx"));
		MemberDTO memberinfo = memberService.getMemberInfo(member);

		model.addAttribute("memberinfo", memberinfo);

		return "myAccount/myinfoEdit";
	}

	// 회원탈퇴
	@GetMapping("/memberdelete.do")
	public String deleteMember(HttpSession session) {
		Integer m_idx = (Integer) session.getAttribute("m_idx");
		if (m_idx != null) {
			memberService.deleteMember(m_idx); // 회원 정보 삭제
			session.invalidate(); // 세션 정보 초기화
		}
		return "common/index";
	}

	// 내정보
	@GetMapping("/myinfoForm.do")
	public String myinfoForm(HttpSession session, MemberDTO member, Model model) {
		member.setM_idx((int) session.getAttribute("m_idx"));
		MemberDTO memberinfo = memberService.getMemberInfo(member);

		model.addAttribute("memberinfo", memberinfo);

		return "myAccount/myinfo";
	}

	@GetMapping("/emailForm.do")
	public String emailForm(HttpServletResponse response, MemberDTO member, Model model, @RequestParam("idx") int idx) {

		member.setM_idx(idx);
		MemberDTO chkFlag = memberService.chkMembertpmPwd(member);

		if (chkFlag == null) {
			try {
				scriptUtil.alertAndMovePage(response, "잘못된 경로 입니다.", "/");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		model.addAttribute("m_idx", idx);

		return "member/email";
	}

	@GetMapping("/findPwdForm.do")
	public String findPwdForm() {
		return "member/pwdFind";
	}

	// 새 비밀번호 변경
	@PostMapping("/updatePwd.do")
	public String updatePwd(HttpServletResponse response, MemberDTO updatePwdmember, Model model) {

		String hashedPassword = bcryptPasswordEncoder.encode(updatePwdmember.getM_pwd());
		updatePwdmember.setM_pwd(hashedPassword);
		int chkFl = memberService.updateMemberPassword(updatePwdmember);
		if (chkFl > 0) {
			try {
				scriptUtil.alertAndMovePage(response, "변경되었습니다.", "/member/loginForm.do");
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			try {
				scriptUtil.alert(response, "실패되었습니다.");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	// 인증코드
	@PostMapping("/code.do")
	public String Newpwd(MemberDTO codemember, Model model, HttpSession session) {

		session.setAttribute("email", codemember.getM_email());

		try {
			MemberDTO foundMember = memberService.findMemberPwd(codemember);
			if (foundMember != null) {
				// 인증코드가 일치하는 경우 새 비밀번호 페이지로 이동
				return "member/newpwd";
			} else {
				// 인증코드가 일치하지 않거나 회원을 찾지 못한 경우 pwdFind 페이지로 이동
				return "member/pwdFind";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "common/error";
		}
	}

	// 인증코드 체크
	@PostMapping("/codeChk.do")
	public String codeChk(HttpServletResponse response, MemberDTO codeChkmember, Model model) {

		try {

			MemberDTO memberDetail = memberService.memberDetail(codeChkmember.getM_idx());

			if (memberDetail.getM_temporary().equals(codeChkmember.getM_code_chk())) {
				scriptUtil.alert(response, "인증되었습니다.");
			} else {
				scriptUtil.alertAndMovePage(response, "인증이 실패되었습니다.\\n정확한 코드를 입력하세요.",
						"/member/emailForm.do?idx=" + codeChkmember.getM_idx());
			}
			model.addAttribute("m_idx", codeChkmember.getM_idx());
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
	public String findPwd(MemberDTO findPwdmember, Model model) {
		try {
			MemberDTO foundMember = memberService.findMemberPwd(findPwdmember);
			if (foundMember.getM_idx() != 0) {
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

	// 인증코드 랜덤함수
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
	public String findId(MemberDTO findIdmember, Model model) {
		MemberDTO foundMember = memberService.findMemberId(findIdmember);

		if (foundMember.getM_email() != null) {

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
	public String loginIndex(MemberDTO loginmember, HttpSession session, Model model) {
		MemberDTO loginUser = memberService.loginMember(loginmember);
		// loginUser 객체가 비어있지 않을 때 (로그인 성공)
		if (!Objects.isNull(loginUser) && bcryptPasswordEncoder.matches(loginmember.getM_pwd(), loginUser.getM_pwd())) {
			session.setAttribute("m_idx", loginUser.getM_idx());
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

	// 로그아웃
	@GetMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "common/index";
	}

}
