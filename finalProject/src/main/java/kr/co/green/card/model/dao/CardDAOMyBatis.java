
package kr.co.green.card.model.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessResourceFailureException;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.Transactional;

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
	public void insertCardApplyInfo(int m_idx, String cd_color, String cd_design, String m_english_name,
			String m_address) {

		Map<String, Object> params = new HashMap<>();
		params.put("m_idx", m_idx);
		params.put("cd_color", cd_color);
		params.put("cd_design", cd_design);
		params.put("m_english_name", m_english_name);
		params.put("m_address", m_address);

		try {
	        int memberResult = sqlSession.update("cardMapper.cardApplyMemberInfo", params);
	        if (memberResult <= 0) {
	            throw new SQLException("서버 오류 또는 입력값이 잘못되었습니다.");
	        }

	        int cardResult = sqlSession.insert("cardMapper.cardApplyCardInfo", params);
	        if (cardResult != 1) {
	            throw new SQLException("서버 오류 또는 입력값이 잘못되었습니다.");
	        }	
	    } catch (SQLException e) {
	        throw new DataAccessResourceFailureException("서버 오류 또는 입력값이 잘못되었습니다.", e);
	    }		
		
	}
}
