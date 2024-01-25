package kr.co.green.customerBoard.service;

import java.util.List;
import java.util.Objects;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import kr.co.green.common.paging.PageInfo;
import kr.co.green.customerBoard.dao.CustomerBoardDAO;
import kr.co.green.customerBoard.dto.CustomerBoardDTO;

@Service
public class CustomerBoardServiceImpl implements CustomerBoardService{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Autowired
	CustomerBoardDAO customerboardDao;
	
	// 트랜잭션 관리 객체
	@Autowired
	PlatformTransactionManager transactionManager;
	
	//전체 게시글 수 구하기
	@Override
	public int selectListCount(CustomerBoardDTO board) {
		return customerboardDao.selectListCount(sqlSession, board);
	}

	// 목록 불러오기
	@Override
	public List<CustomerBoardDTO> selectListAll(PageInfo pi, CustomerBoardDTO board) {
		return customerboardDao.selectListAll(sqlSession, pi, board);
	}

	// 게시글 등록
	@Override
	public int enrollBoard(CustomerBoardDTO board) {
		return customerboardDao.enrollBoard(sqlSession, board);
	}
	
	// 상세보기
	@Transactional //해당메소드에서 실행되는 DB의 액션을 하나로 묶음
	@Override
	public CustomerBoardDTO detailBoard(int cb_idx) {
        //트랜잭션 기본 설정
		DefaultTransactionDefinition transactionDefinition = new DefaultTransactionDefinition();
        //트랜잭션의 격리 수준을 기본 설정으로
		transactionDefinition.setIsolationLevel(TransactionDefinition.ISOLATION_DEFAULT);
        //트랜잭션의 동작을 설정(트랜잭션이 이미 존재하면 참여, 없으면 새로운 트랜잭션 생성)
		transactionDefinition.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
        //트랜잭션 시작
		TransactionStatus status = transactionManager.getTransaction(transactionDefinition);
		
		CustomerBoardDTO board = new CustomerBoardDTO();
		try {
		//게시글 정보
			board = customerboardDao.detailBoard(sqlSession,  cb_idx);
		//게시글이 있을 때
			if(!Objects.isNull(board)) {
				//조회수 증가
				board.setCb_views(board.getCb_views()+1);
				int result = customerboardDao.views(sqlSession, board);
				//조회수 검증
				if(result==1) {
					transactionManager.commit(status);
					return board;
				}
			}
		}catch(Exception e) {
			transactionManager.rollback(status);
			throw e;
		}
		return null;
	}	
		
		
	//수정폼
	@Override
	public CustomerBoardDTO editFormBoard(int cb_idx) {
		return customerboardDao.editFormBoard(sqlSession, cb_idx);
	}
	
	//수정
	@Override
	public int editBoard(CustomerBoardDTO board) {
		return customerboardDao.editBoard(sqlSession, board);
	}
	
	//삭제
	@Override
	public int deleteBoard(int cb_idx) {
		return customerboardDao.deleteBoard(sqlSession, cb_idx);
	}
	
	//글 작성자 조회
	@Override
	public String selectWriter(int cb_idx) {
		return customerboardDao.selectWriter(sqlSession, cb_idx);
	}
	
}
