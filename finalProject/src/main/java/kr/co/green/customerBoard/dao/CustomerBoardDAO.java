package kr.co.green.customerBoard.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.green.common.paging.PageInfo;
import kr.co.green.customerBoard.dto.CustomerBoardDTO;

@Repository
public class CustomerBoardDAO {
	public int selectListCount(SqlSessionTemplate sqlSession, CustomerBoardDTO board) {
		//								네임스페이스.사용할쿼리의ID
		return sqlSession.selectOne("customerboardMapper.selectListCount", board);
	}
	
	//목록 불러오기
	public List<CustomerBoardDTO> selectListAll(SqlSessionTemplate sqlSession, PageInfo pi, CustomerBoardDTO board) {
		//현재 페이지의 게시글을 불러오기 위한 변수
		int offset = (pi.getCpage()-1) * pi.getBoardLimit();
		//작은 규모일 때만 사용권장
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		
		return sqlSession.selectList("customerboardMapper.selectListAll", board, rb);
	}
	
	//게시글 등록
	public int enrollBoard(SqlSessionTemplate sqlSession, CustomerBoardDTO board) {
		return sqlSession.insert("customerboardMapper.enrollBoard", board);
	}
	
	//상세보기
	public CustomerBoardDTO detailBoard(SqlSessionTemplate sqlSession, int cb_idx) {
		return sqlSession.selectOne("customerboardMapper.detailBoard", cb_idx);
	}
	//조회수+1
	public int views(SqlSessionTemplate sqlSession, CustomerBoardDTO board) {
		return sqlSession.update("customerboardMapper.views", board);
	}
	//수정 폼
	public CustomerBoardDTO editFormBoard(SqlSessionTemplate sqlSession, int cb_idx) {
		return sqlSession.selectOne("customerboardMapper.detailBoard", cb_idx);
	}
	//수정
	public int editBoard(SqlSessionTemplate sqlSession, CustomerBoardDTO board) {
		return sqlSession.update("customerboardMapper.editBoard", board);
	}
	//삭제
	public int deleteBoard(SqlSessionTemplate sqlSession, int cb_idx) {
		return sqlSession.delete("customerboardMapper.deleteBoard", cb_idx);
	}
	//글 작성자 조회
	public String selectWriter(SqlSessionTemplate sqlSession, int cb_idx) {
		return sqlSession.selectOne("customerboardMapper.selectWriter", cb_idx);
	}
	
}
