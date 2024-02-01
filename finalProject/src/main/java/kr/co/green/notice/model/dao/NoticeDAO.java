package kr.co.green.notice.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.green.common.paging.PageInfo;
import kr.co.green.customerBoard.dto.CustomerBoardDTO;
import kr.co.green.notice.model.dto.NoticeDTO;

@Repository
public class NoticeDAO {
	public int selectListCount(SqlSessionTemplate sqlSession, NoticeDTO board) {
		//								네임스페이스.사용할쿼리의ID
		return sqlSession.selectOne("noticeMapper.selectListCount", board);
	}
	
	//목록 불러오기
	public List<NoticeDTO> selectListAll(SqlSessionTemplate sqlSession, PageInfo pi, NoticeDTO board) {
		//현재 페이지의 게시글을 불러오기 위한 변수
		//작은 규모일 때만 사용권장
		RowBounds rb = new RowBounds(pi.getOffset(), pi.getBoardLimit());
		
		return sqlSession.selectList("noticeMapper.selectListAll", board, rb);
	}
	
	//게시글 등록
	public int enrollBoard(SqlSessionTemplate sqlSession, NoticeDTO board) {
		return sqlSession.insert("noticeMapper.enrollBoard", board);
	}
	
	//상세보기
	public NoticeDTO detailBoard(SqlSessionTemplate sqlSession, int n_idx) {
		return sqlSession.selectOne("noticeMapper.detailBoard", n_idx);
	}
	//조회수+1
	public int views(SqlSessionTemplate sqlSession, NoticeDTO board) {
		return sqlSession.update("noticeMapper.views", board);
	}
	//수정 폼
	public NoticeDTO editFormBoard(SqlSessionTemplate sqlSession, int n_idx) {
		return sqlSession.selectOne("noticeMapper.detailBoard", n_idx);
	}
	//수정
	public int editBoard(SqlSessionTemplate sqlSession, NoticeDTO board) {
		return sqlSession.update("noticeMapper.editBoard", board);
	}
	//삭제
	public int deleteBoard(SqlSessionTemplate sqlSession, int n_idx) {
		return sqlSession.delete("noticeMapper.deleteBoard", n_idx);
	}
	//글 작성자 조회
	public String selectWriter(SqlSessionTemplate sqlSession, int n_idx) {
		return sqlSession.selectOne("noticeMapper.selectWriter", n_idx);
	}
	
}
