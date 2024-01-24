package kr.co.green.member.model.service;

import kr.co.green.member.model.dto.MemberDTO;

public interface MemberService {

	public MemberDTO loginMember(MemberDTO member);

	public int checkEmail(String email);

	public int registerMember(MemberDTO member);

	public MemberDTO findMember(int idx);
}
