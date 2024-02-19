
package kr.co.green.card.model.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessResourceFailureException;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.Transactional;

import kr.co.green.card.model.dto.CardDTO;
import kr.co.green.member.model.dto.MemberDTO;

@Repository
public class CardDAOMyBatis implements CardDAO {

	private final SqlSessionTemplate sqlSession;

	@Autowired
	public CardDAOMyBatis(SqlSessionTemplate sqlSession, PlatformTransactionManager transactionManager) {
		super();
		this.sqlSession = sqlSession;
	}

	@Transactional
	@Override
	// 카드 신청을 위한 신청정보 저장 메소드
	public void insertCardApplyInfo(Map<String, Object> applyMap) {

		try {
	        int memberResult = sqlSession.update("cardMapper.cardApplyMemberInfo", applyMap);
	        if (memberResult <= 0) {
	            throw new SQLException("서버 오류 또는 입력값이 잘못되었습니다.");
	        }

	        int cardResult = sqlSession.insert("cardMapper.cardApplyCardInfo", applyMap);
	        if (cardResult != 1) {
	            throw new SQLException("서버 오류 또는 입력값이 잘못되었습니다.");
	        }	
	    } catch (SQLException e) {
	        throw new DataAccessResourceFailureException("서버 오류 또는 입력값이 잘못되었습니다.", e);
	    }		
	}

	@Override
	//회원의 카드 갯수 조회
	public int getMemberCardNum(int m_idx) {
		return sqlSession.selectOne("cardMapper.getMemberCardNum", m_idx);
	}

	@Override
	public int insertCardApplyInfo(CardDTO cardDTO) {
		return sqlSession.update("cardMapper.cardFinalApply", cardDTO);
	}

	@Override
	public List<CardDTO> cardInfo(int idx, String statement) {
		if(statement.equals("보유 카드 조회")) 
			return sqlSession.selectList("cardMapper.getMemberOwnCard", idx);
		
		else if(statement.equals("신청 승인된 카드 조회")) 
			return sqlSession.selectList("cardMapper.getMemberApplyCard", idx);
		
		else throw new DataAccessResourceFailureException("서버 오류 또는 입력값이 잘못되었습니다."); 
	}

	@Override
	public Map<String, Object> cardInfo(int cd_idx) {
		CardDTO cardDTO = sqlSession.selectOne("cardMapper.getMemberLostCard", cd_idx);
		int m_idx = sqlSession.selectOne("cardMapper.getMemberIdx", cd_idx);
		MemberDTO memberDTO = sqlSession.selectOne("cardMapper.getMemberEnglishName", m_idx);
		
		Map<String, Object> lostCardMap = new HashMap<>();
		lostCardMap.put("cardDTO", cardDTO);
		lostCardMap.put("memberDTO", memberDTO);
		
		return lostCardMap;
		
		}

	@Override
	public int cardReport(int cd_idx) {
		return sqlSession.delete("cardMapper.deleteMemberLostCard", cd_idx);
	}
}
