package kr.co.green.admin.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.green.admin.model.dao.AdminDAO;
import kr.co.green.admin.model.dto.AdminDTO;
import kr.co.green.common.paging.PageInfo;

@Service
public class AdminServiceImpl implements AdminService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	AdminDAO adminDao;
	
	@Override
	public int selectListCount(AdminDTO board) {
		return adminDao.selectListCount(sqlSession, board);
	}

	@Override
	public List<AdminDTO> selectListAll(PageInfo pi, AdminDTO board) {
		return adminDao.selectListAll(sqlSession, pi, board);
	}
	
	@Override
	public AdminDTO getModalList(AdminDTO board) {
		return adminDao.getModalList(sqlSession, board);
	}
	
	@Override
	public int approveCardApply(int cd_idx) {
		return adminDao.approveCardApply(sqlSession, cd_idx);
	}
	
	@Override
	public int rejectCardApply(int cd_idx) {
		return adminDao.rejectCardApply(sqlSession, cd_idx);
	}


}
