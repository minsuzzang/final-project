package kr.co.green.admin.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.green.admin.model.dto.AdminDTO;
import kr.co.green.common.paging.PageInfo;
import kr.co.green.customerBoard.dto.CustomerBoardDTO;

@Repository
public class AdminDAO {
	public int selectListCount(SqlSessionTemplate sqlSession, AdminDTO board) {
		return sqlSession.selectOne("adminMapper.selectListCount", board);
	}
	
	public List<AdminDTO> selectListAll(SqlSessionTemplate sqlSession, PageInfo pi, AdminDTO board) {
		RowBounds rb = new RowBounds(pi.getOffset(), pi.getBoardLimit());
		return sqlSession.selectList("adminMapper.selectListAll", board, rb);
	}
	
	public AdminDTO getModalList(SqlSessionTemplate sqlSession, AdminDTO board){
		return sqlSession.selectOne("adminMapper.getModalList", board);
	}
	
	public int approveCardApply(SqlSessionTemplate sqlSession, int cd_idx) {
		return sqlSession.update("adminMapper.approveCardApply", cd_idx);
	}
	
	public int rejectCardApply(SqlSessionTemplate sqlSession, int cd_idx) {
		return sqlSession.update("adminMapper.rejectCardApply", cd_idx);
	}
	
}
