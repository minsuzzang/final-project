package kr.co.green.notice.model.service;

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
import kr.co.green.notice.model.dao.NoticeDAO;
import kr.co.green.notice.model.dto.NoticeDTO;

@Service
public class NoticeServiceImpl implements NoticeService{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Autowired
	NoticeDAO noticeDao;
	
	// 트랜잭션 관리 객체
	@Autowired
	PlatformTransactionManager transactionManager;
	
	//전체 게시글 수 구하기
	@Override
	public int selectListCount(NoticeDTO board) {
		return noticeDao.selectListCount(sqlSession, board);
	}

	// 목록 불러오기
	@Override
	public List<NoticeDTO> selectListAll(PageInfo pi, NoticeDTO board) {
		return noticeDao.selectListAll(sqlSession, pi, board);
	}

	// 게시글 등록
	@Override
	public int enrollBoard(NoticeDTO board) {
		return noticeDao.enrollBoard(sqlSession, board);
	}
	
	// 상세보기
	@Transactional //해당메소드에서 실행되는 DB의 액션을 하나로 묶음
	@Override
	public NoticeDTO detailBoard(int n_idx) {
        //트랜잭션 기본 설정
		DefaultTransactionDefinition transactionDefinition = new DefaultTransactionDefinition();
        //트랜잭션의 격리 수준을 기본 설정으로
		transactionDefinition.setIsolationLevel(TransactionDefinition.ISOLATION_DEFAULT);
        //트랜잭션의 동작을 설정(트랜잭션이 이미 존재하면 참여, 없으면 새로운 트랜잭션 생성)
		transactionDefinition.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
        //트랜잭션 시작
		TransactionStatus status = transactionManager.getTransaction(transactionDefinition);
		
		NoticeDTO board = new NoticeDTO();
		try {
		//게시글 정보
			board = noticeDao.detailBoard(sqlSession, n_idx);
		//게시글이 있을 때
			if(!Objects.isNull(board)) {
				//조회수 증가
				board.setN_views(board.getN_views()+1);
				int result = noticeDao.views(sqlSession, board);
				//조회수 검증
				if(result==1) {
					transactionManager.commit(status);
					return board;
				}
			}
		}catch(Exception e) {
			transactionManager.rollback(status);
		}
		return null;
	}	
		
		
	//수정폼
	@Override
	public NoticeDTO editFormBoard(int n_idx) {
		return noticeDao.editFormBoard(sqlSession, n_idx);
	}
	
	//수정
	@Override
	public int editBoard(NoticeDTO board) {
		return noticeDao.editBoard(sqlSession, board);
	}
	
	//삭제
	@Override
	public int deleteBoard(int n_idx) {
		return noticeDao.deleteBoard(sqlSession, n_idx);
	}
	
	//글 작성자 조회
	@Override
	public String selectWriter(int n_idx) {
		return noticeDao.selectWriter(sqlSession, n_idx);
	}
	
}
