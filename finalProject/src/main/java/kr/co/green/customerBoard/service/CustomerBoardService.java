package kr.co.green.customerBoard.service;

import java.util.List;

import kr.co.green.common.paging.PageInfo;
import kr.co.green.customerBoard.dto.CustomerBoardDTO;

public interface CustomerBoardService {
	//전체 게시글 수 구하기
	int selectListCount(CustomerBoardDTO board);
	
	//목록 불러오기
	List<CustomerBoardDTO> selectListAll(PageInfo pi, CustomerBoardDTO board);
	
	//게시글 등록
	int enrollBoard(CustomerBoardDTO board);

	// 상세보기
	CustomerBoardDTO detailBoard(int cb_idx);
	
	//수정폼
	CustomerBoardDTO editFormBoard(int cb_idx);
	
	//수정
	int editBoard(CustomerBoardDTO board);
	
	//삭제
	int deleteBoard(int cb_idx);
	
	//글 작성자 조회
	String selectWriter(int cb_idx);

}
