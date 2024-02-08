package kr.co.green.admin.model.service;

import java.util.List;

import kr.co.green.admin.model.dto.AdminDTO;
import kr.co.green.common.paging.PageInfo;
import kr.co.green.member.model.dto.MemberDTO;
import kr.co.green.notice.model.dto.NoticeDTO;

public interface AdminService {
	//전체 게시글 수 구하기
	int selectListCount(AdminDTO board);
	
	//목록 불러오기
	List<AdminDTO> selectListAll(PageInfo pi, AdminDTO board);
	
	// 상세보기
	AdminDTO getModalList(AdminDTO board);
	
	//승인
	int approveCardApply(int cd_idx);

	//거절
	int rejectCardApply(int cd_idx);
	
	
}
