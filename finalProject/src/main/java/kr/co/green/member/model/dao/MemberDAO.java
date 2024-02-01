package kr.co.green.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.green.member.model.dto.MemberDTO;

@Repository
public class MemberDAO {
	public MemberDTO loginMember(SqlSessionTemplate sqlSession, 
			 MemberDTO member) {
return sqlSession.selectOne("memberMapper.loginMember", member);
}

public int checkEmail(SqlSessionTemplate sqlSession, String email) {
return sqlSession.selectOne("memberMapper.checkEmail", email);
}

public int registerMember(SqlSessionTemplate sqlSession, MemberDTO member) {
return sqlSession.insert("memberMapper.registerMember", member);
}

public MemberDTO memberDetail(SqlSessionTemplate sqlSession, int m_idx) {
	return sqlSession.selectOne("memberMapper.memberDetail", m_idx);
}
}
