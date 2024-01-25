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

}
