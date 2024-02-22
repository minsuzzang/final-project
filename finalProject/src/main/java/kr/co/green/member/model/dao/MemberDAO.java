package kr.co.green.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.green.card.model.dto.CardDTO;
import kr.co.green.member.model.dto.MemberDTO;

@Repository
public class MemberDAO {
	public MemberDTO loginMember(SqlSessionTemplate sqlSession, MemberDTO member) {
		return sqlSession.selectOne("memberMapper.loginMember", member);
	}

	public int checkEmail(SqlSessionTemplate sqlSession, String email) {
		return sqlSession.selectOne("memberMapper.checkEmail", email);
	}

	public int registerMember(SqlSessionTemplate sqlSession, MemberDTO member) {
		return sqlSession.insert("memberMapper.registerMember", member);
	}

	public MemberDTO findMemberId(SqlSessionTemplate sqlSession, MemberDTO member) {
		return sqlSession.selectOne("memberMapper.findMemberId", member);
	}

	public MemberDTO findMemberPwd(SqlSessionTemplate sqlSession, MemberDTO member) {
		return sqlSession.selectOne("memberMapper.findMemberPwd", member);
	}

	public MemberDTO chkMembertmpPwd(SqlSessionTemplate sqlSession, MemberDTO member) {
		return sqlSession.selectOne("memberMapper.chkMembertmpPwd", member);
	}

	public MemberDTO memberDetail(SqlSessionTemplate sqlSession, int m_idx) {
		return sqlSession.selectOne("memberMapper.memberDetail", m_idx);
	}

	public int updateMemberPassword(SqlSessionTemplate sqlSession, MemberDTO member) {
		return sqlSession.update("memberMapper.updateMemberPassword", member);
	}

	public int updateMembertmpPassword(SqlSessionTemplate sqlSession, MemberDTO member) {
		return sqlSession.update("memberMapper.updateMembertmpPassword", member);
	}

	public MemberDTO getMemberInfo(SqlSessionTemplate sqlSession, MemberDTO member) {
		return sqlSession.selectOne("memberMapper.getMemberInfo", member);
	}

	public MemberDTO membercard(SqlSessionTemplate sqlSession, MemberDTO member) {
		return sqlSession.selectOne("memberMapper.membercard", member);
	}

	public int updateMemberInfo(SqlSessionTemplate sqlSession, MemberDTO member) {
		return sqlSession.update("memberMapper.updateMemberInfo", member);
	}

	public int deleteMember(SqlSessionTemplate sqlSession, int m_idx) {
		return sqlSession.delete("memberMapper.delete", m_idx);
	}

	public CardDTO getCardDetail(SqlSessionTemplate sqlSession, int cd_idx) {
		return sqlSession.selectOne("memberMapper.getCardDetail", cd_idx);
	}

}
