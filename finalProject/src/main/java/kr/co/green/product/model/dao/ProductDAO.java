package kr.co.green.product.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.green.card.model.dto.CardDTO;
import kr.co.green.product.model.dto.ProductDTO;

@Repository
public class ProductDAO {
	//상세보기
	public ProductDTO productDetail(SqlSessionTemplate sqlSession, int p_idx) {
		return sqlSession.selectOne("productMapper.productDetail", p_idx);
	}
}
