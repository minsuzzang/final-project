package kr.co.green.purchase.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.green.purchase.model.dao.PurchaseDAO;
import kr.co.green.purchase.model.dto.PurchaseDTO;

@Service
public class PurchaseServiceImpl implements PurchaseService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	PurchaseDAO purchaseDao;
	
	@Override
	public int purchaseHistory(PurchaseDTO purchase) {
		return purchaseDao.purchaseHistory(sqlSession, purchase);
	}
}
