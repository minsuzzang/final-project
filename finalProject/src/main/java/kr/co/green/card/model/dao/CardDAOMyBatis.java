
package kr.co.green.card.model.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;

@Repository
public class CardDAOMyBatis implements CardDAO {

	private final SqlSessionTemplate sqlSession;
	private final PlatformTransactionManager transactionManager;

	@Autowired
	public CardDAOMyBatis(SqlSessionTemplate sqlSession, PlatformTransactionManager transactionManager) {
		super();
		this.sqlSession = sqlSession;
		this.transactionManager = transactionManager;
	}

	@Transactional
	@Override
	// 카드 신청을 위한 신청정보 저장 메소드
	public int insertCardApplyInfo(int m_idx, String cd_color, String cd_design, String m_english_name, String m_address) {
		
		Map<String, Object> params = new HashMap<>();
		params.put("m_idx", m_idx);
		params.put("cd_color", cd_color);
		params.put("cd_design", cd_design);
		params.put("m_english_name", m_english_name);
		params.put("m_address", m_address);

		DefaultTransactionDefinition transactionDefinition = new DefaultTransactionDefinition();
		// 트랜젝션의 격리 수준을 기본 설정으로
		transactionDefinition.setIsolationLevel(TransactionDefinition.ISOLATION_DEFAULT);

		// 트랜잭션의 동작을 설정 (트랜잭션이 이미 존재하면 참여, 없으면 새로운 트랜잭션 생성)
		transactionDefinition.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);

		// 트랜젝션 시작
		TransactionStatus status = transactionManager.getTransaction(transactionDefinition);

		// 멤버테이블 업데이트 null이 아니면 -> 카드테이블 업데이트 수행

		try {
			int memberResult = sqlSession.update("cardMapper.member_cardApply", params);
			if (memberResult > 0) {
				int cardResult = sqlSession.insert("cardMapper.card_cardApply", params);
				if (cardResult == 1) {
					transactionManager.commit(status);
					return cardResult;
				}
				else
					transactionManager.rollback(status);
			} else
				transactionManager.rollback(status);

		} catch (Exception e) {
			transactionManager.rollback(status);
			throw e;
		}

		return 0;
	}

}
