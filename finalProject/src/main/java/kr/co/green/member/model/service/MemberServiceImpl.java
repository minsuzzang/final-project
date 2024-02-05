package kr.co.green.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.green.member.model.dao.MemberDAO;
import kr.co.green.member.model.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Autowired
	private MemberDAO memberDao;

	// 로그인
	@Override
	public MemberDTO loginMember(MemberDTO member) {
		return memberDao.loginMember(sqlSession, member);
	}

	// 이메일 중복체크
	@Override
	public int checkEmail(String email) {
		return memberDao.checkEmail(sqlSession, email);
	}

	// 회원가입
	@Override
	public int registerMember(MemberDTO member) {
		return memberDao.registerMember(sqlSession, member);
	}

	@Override
	public MemberDTO memberDetail(int m_idx) {
		return memberDao.memberDetail(sqlSession, m_idx);
	}

	// 아이디 찾기
	@Override
	public MemberDTO findMemberId(MemberDTO member) {
		return memberDao.findMemberId(sqlSession, member);
	}

	// 비밀번호 찾기
	@Override
	public MemberDTO findMemberPwd(MemberDTO member) {
		return memberDao.findMemberPwd(sqlSession, member);
	}

	@Override
	public Object updateMemberPassword(MemberDTO member) {
		return memberDao.updateMemberPassword(sqlSession, member);
	}

}
