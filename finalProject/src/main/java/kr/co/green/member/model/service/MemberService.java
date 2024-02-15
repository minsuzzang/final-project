package kr.co.green.member.model.service;

import kr.co.green.member.model.dto.MemberDTO;

public interface MemberService {

	// 로그인
	public MemberDTO loginMember(MemberDTO member);

	// 이메일 중복검사
	public int checkEmail(String email);

	// 회원가입
	public int registerMember(MemberDTO member);

	// 아이디 찾기
	public MemberDTO findMemberId(MemberDTO member);

	// 비밀번호 찾기
	public MemberDTO findMemberPwd(MemberDTO member);

	// 멤버정보가져오기
	public MemberDTO memberDetail(int m_idx);

	public int updateMemberPassword(MemberDTO member);

	public int updateMembertmpPassword(MemberDTO member);

	public MemberDTO chkMembertpmPwd(MemberDTO member);

	public MemberDTO getMemberInfo(MemberDTO member);

	public MemberDTO membercard(MemberDTO member);

}
