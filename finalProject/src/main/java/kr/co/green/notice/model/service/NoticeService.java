package kr.co.green.notice.model.service;

import java.util.List;

import kr.co.green.common.paging.PageInfo;
import kr.co.green.customerBoard.dto.CustomerBoardDTO;
import kr.co.green.notice.model.dto.NoticeDTO;

public interface NoticeService {
	//전체 게시글 수 구하기
	int selectListCount(NoticeDTO board);
	
	//목록 불러오기
	List<NoticeDTO> selectListAll(PageInfo pi, NoticeDTO board);
	
	//게시글 등록
	int enrollBoard(NoticeDTO board);

	// 상세보기
	NoticeDTO detailBoard(int cb_idx);
	
	//수정폼
	NoticeDTO editFormBoard(int cb_idx);
	
	//수정
	int editBoard(NoticeDTO board);
	
	//삭제
	int deleteBoard(int cb_idx);
	
	//글 작성자 조회
	String selectWriter(int cb_idx);

}
