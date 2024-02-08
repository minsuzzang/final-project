package kr.co.green.purchase.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.green.purchase.model.dto.PurchaseDTO;

@Repository
public class PurchaseDAO {
	public int purchaseHistory(SqlSessionTemplate sqlSession, PurchaseDTO purchase) {
		return sqlSession.insert("purchaseMapper.purchaseHistory", purchase);
	}
}
