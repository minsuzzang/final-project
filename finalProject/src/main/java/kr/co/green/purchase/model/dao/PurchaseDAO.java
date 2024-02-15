package kr.co.green.purchase.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.green.purchase.model.dto.PurchaseDTO;

@Repository
public class PurchaseDAO {
	public int purchaseHistory(SqlSessionTemplate sqlSession, PurchaseDTO purchase) {
		return sqlSession.insert("purchaseMapper.purchaseHistory", purchase);
	}
	
	public List<PurchaseDTO> cardDetail(SqlSessionTemplate sqlSession, PurchaseDTO purchase) {
		return sqlSession.selectList("purchaseMapper.cardDetail", purchase);
	}
	
	public PurchaseDTO cardSelect(SqlSessionTemplate sqlSession, PurchaseDTO purchase) {
		return sqlSession.selectOne("purchaseMapper.cardSelect", purchase);
	}
	
	public int mileagePlus(SqlSessionTemplate sqlSession, PurchaseDTO purchase) {
		return sqlSession.update("purchaseMapper.mileagePlus", purchase);
	}
}
