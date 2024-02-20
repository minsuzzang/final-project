package kr.co.green.purchase.model.service;

import java.util.List;
import java.util.Objects;

import javax.servlet.http.HttpServletResponse;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import kr.co.green.purchase.model.dao.PurchaseDAO;
import kr.co.green.purchase.model.dto.PurchaseDTO;
import kr.co.green.scriptUtil.scriptUtil;

@Service
public class PurchaseServiceImpl implements PurchaseService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	PurchaseDAO purchaseDao;
	
	@Autowired
	PlatformTransactionManager transactionManager;
	
	@Override
	public int purchaseHistory(PurchaseDTO purchase) {
		return purchaseDao.purchaseHistory(sqlSession, purchase);
	}
	
	@Override
	public List<PurchaseDTO> cardDetail(PurchaseDTO purchase) {
		return purchaseDao.cardDetail(sqlSession, purchase);
	}
	
	@Override
	public PurchaseDTO cardSelect(PurchaseDTO purchase) {
		return purchaseDao.cardSelect(sqlSession, purchase);
	}
	
	@Override
	public String payment(PurchaseDTO purchase) {
		DefaultTransactionDefinition transactionDefinition = new DefaultTransactionDefinition();
		transactionDefinition.setIsolationLevel(TransactionDefinition.ISOLATION_DEFAULT);
		transactionDefinition.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = transactionManager.getTransaction(transactionDefinition);
		
		PurchaseDTO cardComparison = new PurchaseDTO();
		
		try {
			//카드정보 검증
			cardComparison = purchaseDao.cardSelect(sqlSession, purchase);

			//카드정보가 있을 때
			if(!Objects.isNull(cardComparison)) {
				//마일리지 적립
				int result1 = purchaseDao.mileagePlus(sqlSession, purchase);

				//결제
				int result2 = purchaseDao.purchaseHistory(sqlSession, purchase);

				//마일리지적립, 결제 검증
				if(result1==1 && result2==1) {
					transactionManager.commit(status);
					return "success";
				}
			} else {
				return "alert";
			}
		}catch(Exception e) {
			transactionManager.rollback(status);
		}
		return "failed";
	}
	
	
	
	
	
}
